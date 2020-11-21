from django import template
from django.template import Variable, VariableDoesNotExist

register = template.Library()

@register.filter(name='hash')
def hash(object, attr):
    pseudo_context = { 'object' : object }
    try:
        value = Variable('object.%s' % attr).resolve(pseudo_context)
    except VariableDoesNotExist:
        value = None
    return value