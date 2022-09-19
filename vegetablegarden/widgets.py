from django import forms

class DateWidget(forms.DateInput):
    class Media:
        js = [
            "admin/js/calendar.js",
            "admin/js/admin/DateTimeShortcuts.js",
        ]

    def __init__(self, attrs=None, format=None):
        attrs = {"class": "vDateField uk-input", "size": "10", **(attrs or {})}
        super().__init__(attrs=attrs, format=format)
