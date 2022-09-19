from django.utils import timezone
from django import forms
from django.db.models import fields
from .models import Area,GrowingCrop, Reminder,Vegetable,CropManagement
from django.contrib.admin.widgets import AdminDateWidget
from .widgets import DateWidget

class GrowingCropCreateForm(forms.ModelForm):
    
    class Meta:
        model = GrowingCrop
        exclude = ('user',)
        widgets = {
            'vegetable': forms.Select(attrs={'class': 'uk-select'}),
            'variety': forms.TextInput(attrs={'class': 'uk-input'}),
            'area': forms.Select(attrs={'class': 'uk-select'}),
            'seeding_date' : DateWidget(),
            'planting_date': DateWidget(),
            'transplanting_date': DateWidget(),
            'harvest_date_start': DateWidget(),
            'harvest_date_end': DateWidget(),
            }

    def __init__(self, *args, **kwargs):
        self.area=kwargs.pop('area_pk',None)

        super(GrowingCropCreateForm, self).__init__(*args, **kwargs)
        self.fields['area'].initial = self.area

class GrowingCropUpdateForm(forms.ModelForm):

    class Meta:
        model=GrowingCrop
        exclude = ('user',)
        widgets = {
            'vegetable': forms.Select(attrs={'class': 'uk-select'}),
            'variety': forms.TextInput(attrs={'class': 'uk-input'}),
            'area': forms.Select(attrs={'class': 'uk-select'}),
            'seeding_date': DateWidget(),
            'planting_date': DateWidget(),
            'transplanting_date': DateWidget(),
            'harvest_date_start': DateWidget(),
            'harvest_date_end': DateWidget(),
            }
class CropManagementCreateForm(forms.ModelForm):

    class Meta:
        model=CropManagement
        #fields=('growing_crop','title','text','date',)
        exclude=('user',)
        reminder_text=forms.TextInput()
        widgets = {
            'growing_crop' : forms.Select(attrs={'class': 'uk-input'}),
            'title': forms.TextInput(attrs={'class': 'uk-input'}),
            'text': forms.Textarea(attrs={'class': 'uk-textarea'}),
            'date': DateWidget(),
            }
        
    def __init__(self, *args, **kwargs):
        self.growingcrop_pk = kwargs.pop('growingcrop_pk')

        super(CropManagementCreateForm, self).__init__(*args, **kwargs)
        
        self.fields['growing_crop'].initial = self.growingcrop_pk
        self.fields['growing_crop'].widget = forms.HiddenInput()
        self.fields['growing_crop'].label = ''
        self.fields['date'].initial = timezone.now().date()




class CropManagementUpdateForm(forms.ModelForm):

    class Meta:
        model=CropManagement
        exclude=('user','growing_crop')
        widgets = {
            'growing_crop' : forms.Select(attrs={'class': 'uk-input'}),
            'title': forms.TextInput(attrs={'class': 'uk-input'}),
            'text': forms.Textarea(attrs={'class': 'uk-textarea'}),
            'date': DateWidget(),
            }

        

class AreaCreateForm(forms.ModelForm):

    class Meta:
        model=Area
        exclude = ('user', )

class VegetableCreateForm(forms.ModelForm):

    class Meta:
        model=Vegetable
        exclude = ('user',)
        widgets = {
            'name' : forms.TextInput(attrs={'class': 'uk-input'}),
            'icon': forms.TextInput(attrs={'class': 'uk-input'}),
            }

class ReminderCreateForm(forms.ModelForm):

    class Meta:
        model=Reminder
        exclude = ('user',)
        widgets = {
            'title' : forms.TextInput(attrs={'class': 'uk-input'}),
            'days': forms.TextInput(attrs={'class': 'uk-input'}),
            'unit': forms.Select(attrs={'class': 'uk-select'}),
            'base_date':forms.TextInput(attrs={'class': 'uk-input', 'readonly':'readonly'}),
            'calculation_date': DateWidget(),
            'text': forms.Textarea(attrs={'class': 'uk-textarea'}),           
            }
    
    def __init__(self, *args, **kwargs):
        self.cropmanagement_pk = kwargs.pop('cropmanagement_pk')
        self.base_date = kwargs.pop('base_date')

        super(ReminderCreateForm, self).__init__(*args, **kwargs)
        
        self.fields['cropmanagement'].initial = self.cropmanagement_pk
        self.fields['base_date'].initial = self.base_date
        self.fields['cropmanagement'].widget = forms.HiddenInput()
        self.fields['cropmanagement'].label = ''

