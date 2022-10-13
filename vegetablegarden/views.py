import datetime
from django.shortcuts import render
from django.views import generic
from django.urls import reverse_lazy,reverse
from django.shortcuts import get_list_or_404, redirect
from django.contrib.auth.mixins import LoginRequiredMixin
from django.db.models import Count

from .models import Field,Vegetable, Row, GrowingCrop, CropManagement, Reminder
from .forms import GrowingCropCreateForm, GrowingCropUpdateForm,CropManagementCreateForm,CropManagementUpdateForm,AreaCreateForm, ReminderCreateForm,VegetableCreateForm


# Create your views here.
class Top(LoginRequiredMixin,generic.ListView):
    template_name = 'top.html'
    model = CropManagement
    field_pk = 0

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['menu_list'] = CropManagement.objects.values('area__field__name','area__field__pk').annotate(total = Count('area')).order_by('-area__field__pk')
        context['field'] = self.field_pk
        return context

    def get_queryset(self):
        if len(self.kwargs)==0:
            self.field_pk = Field.objects.latest('pk').pk
        else:
            self.field_pk = self.kwargs['field_pk']

        queryset = CropManagement.objects.filter(area__field=self.field_pk).order_by('area__name','row__name','growing_crop__vegetable','-date')
        return queryset
class VegetableCreate(LoginRequiredMixin,generic.FormView):
    form_class= VegetableCreateForm
    template_name="growingcrop_create.html"
    model = Vegetable        

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title']='野菜を追加'
        return context

    def form_valid(self, form):
        instance=form.save(commit=False)
        instance.user=self.request.user
        self.object=form.save()
        return redirect('vegetablegarden:growingcrop_list')

class GrowingCropList(LoginRequiredMixin,generic.ListView):
    model = GrowingCrop
    template_name="growingcrop_list.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title']='ただいま栽培中'

        context['cropmanagements']=CropManagement.objects.order_by('-date')[:5]
        context['harvestedcrops']=GrowingCrop.objects.filter(harvest_date_end__isnull=False).order_by('area__name')
        context['reminders']=Reminder.objects.order_by('-calculation_date')
        return context

    def get_queryset(self):
        return super().get_queryset().filter(user=self.request.user.pk,harvest_date_end__isnull=True).order_by('area__name')

class GrowingCropCreate(LoginRequiredMixin,generic.FormView):
    form_class= GrowingCropCreateForm
    template_name="growingcrop_create.html"
    model = GrowingCrop        

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title']='栽培情報を追加'
        return context

    def form_valid(self, form):
        instance=form.save(commit=False)
        instance.user=self.request.user
        self.object=form.save()

        return redirect('vegetablegarden:growingcrop_list')

class GrowingCropUpdate(LoginRequiredMixin,generic.UpdateView):
    form_class= GrowingCropUpdateForm
    template_name = 'growingcrop_update.html'
    model = GrowingCrop

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title']='栽培情報を編集'

        return context

    def form_valid(self, form):
        instance=form.save(commit=False)
        instance.user=self.request.user
        self.object=form.save()
        
        return redirect('vegetablegarden:growingcrop_list')

class GrowingCropDelete(LoginRequiredMixin,generic.DeleteView):
    model=GrowingCrop
    template_name="growingcrop_delete.html"
    success_url=reverse_lazy('vegetablegarden:growingcrop_list')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title']='栽培している野菜の削除'
        return context

class CropManagementList(LoginRequiredMixin,generic.ListView):
    template_name="cropmanagement_list.html"
    model = CropManagement
    all_data=CropManagement.objects.all()
    growingcrop=GrowingCrop.objects.all()

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        queryset=super().get_queryset().filter(user=self.request.user.pk,growing_crop=self.kwargs['growingcrop_pk']).order_by('-date','-pk')
        if len(queryset)==0:
            context['count']=0

        context['growingcrop']=self.growingcrop.filter(pk=self.kwargs['growingcrop_pk'])
        context['reminders']=Reminder.objects.filter(cropmanagement__growing_crop=self.kwargs['growingcrop_pk'])
        context['title']='お世話ノート'

        return context

    def get_queryset(self):
        queryset=super().get_queryset().filter(user=self.request.user.pk,growing_crop=self.kwargs['growingcrop_pk']).order_by('-date','-pk')
        
        if len(queryset) == 0:
            queryset=self.all_data

        return queryset

class CropManagementCreate(LoginRequiredMixin,generic.FormView):
    #form_class= CropManagementCreateForm
    form_class=CropManagementCreateForm
    template_name="cropmanagement_create.html"
    model = CropManagement        
    growingcrop=GrowingCrop.objects.all()

    def get_form_kwargs(self):
        kwargs = super(CropManagementCreate, self).get_form_kwargs()
        kwargs['growingcrop_pk'] = self.kwargs['growingcrop_pk']
        return kwargs    

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['growingcrop']=self.growingcrop.filter(pk=self.kwargs['growingcrop_pk'])
        context['title']='お世話記録を追加'
        return context

    def form_valid(self, form):
        instance=form.save(commit=False)
        instance.user=self.request.user
        self.object=form.save()
        return redirect('vegetablegarden:cropmanagement_list', growingcrop_pk=self.kwargs['growingcrop_pk'])

class CropManagementUpdate(LoginRequiredMixin,generic.UpdateView):
    form_class= CropManagementUpdateForm
    template_name = 'cropmanagement_update.html'
    model = CropManagement

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title']='お世話記録を編集'
        return context

    def form_valid(self, form):
        instance=form.save(commit=False)
        #instance.management_group=get_object_or_404(ManagementGroup,pk=self.kwargs['mg_pk'])
        instance.user=self.request.user
        self.object=form.save()
        
        print(self.object.growing_crop.pk)

        return redirect('vegetablegarden:cropmanagement_list', growingcrop_pk=self.object.growing_crop.pk)


class CropManagementDelete(LoginRequiredMixin,generic.DeleteView):
    model=CropManagement
    template_name="cropmanagement_delete.html"
    #success_url=reverse_lazy('vegetablegarden:growingcrop_list')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title']='お世話記録の削除'
        return context

    def get_success_url(self):
        print(self.object.growing_crop.pk)
        return reverse('vegetablegarden:cropmanagement_list', kwargs={"growingcrop_pk":self.object.growing_crop.pk})


class ReminderCreate(LoginRequiredMixin,generic.FormView):
    form_class= ReminderCreateForm
    template_name="reminder_create.html"
    model = Reminder        
    cropmanagement=CropManagement.objects.all()

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['cropmanagement']=self.cropmanagement.filter(pk=self.kwargs['cropmanagement_pk'])
        context['title']='リマインダを追加'
        return context

    def get_form_kwargs(self):
        kwargs = super(ReminderCreate, self).get_form_kwargs()
        kwargs['cropmanagement_pk'] = self.kwargs['cropmanagement_pk']
        kwargs['base_date'] = CropManagement.objects.filter(pk=self.kwargs['cropmanagement_pk'])[0].date
        return kwargs    

    def form_valid(self, form):
        instance=form.save(commit=False)
        instance.user=self.request.user

        if instance.unit == '週間後':
            #days_add=instance.days * 7
            instance.calculation_date = instance.base_date + datetime.timedelta(days=instance.days * 7)

        self.object=form.save()
        return redirect('vegetablegarden:cropmanagement_list', growingcrop_pk=instance.cropmanagement.growing_crop_id)
