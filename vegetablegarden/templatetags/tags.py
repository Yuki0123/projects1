from django import template
import datetime
from operator import itemgetter,attrgetter

register = template.Library()

@register.simple_tag
def sort_queryset(q):
    print(q)
    return q

@register.filter
def modulo(num, val):
    return num % val

@register.filter
def queryset_to_dict(qs):
    print(qs)
    return qs

@register.filter
def filter_by_area(qs):
    result = filter(lambda item: not item.area is None and item.row is None and item.growing_crop is None, qs.list)
    return result

@register.filter
def filter_by_row(qs):
    result = filter(lambda item: not item.area is None and not item.row is None and item.growing_crop is None, qs.list)
    result = sorted(result, key = lambda item: item.row.name)
    return result

@register.filter
def filter_by_growingcrop(qs):
    result = filter(lambda item: not item.area is None and not item.row is None and not item.growing_crop is None, qs.list)
    result = sorted(result, key = lambda item: item.date,reverse=True)
    result = sorted(result, key = lambda item: [item.row.name,item.growing_crop.vegetable.name,item.growing_crop.variety])

    return result
