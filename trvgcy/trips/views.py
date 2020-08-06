from django.shortcuts import render

# Create your views here.

def result(request):
    print(request.POST) ## Delete, debuging purposes!!
    return render(request, 'trips/result.html')
