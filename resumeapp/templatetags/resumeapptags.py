from django import template
 
register = template.Library()


# Adds a float number to the passed in value
@register.filter(name = 'addf')
def addf(value, arg):
    return float(value) + float(arg)