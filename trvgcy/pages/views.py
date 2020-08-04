from django.shortcuts import render

# Create your views here.

def index(request):
    print(request.POST) ## Delete, debuging purposes!!
    return render(request, 'pages/index.html')

