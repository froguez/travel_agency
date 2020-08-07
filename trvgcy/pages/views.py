from django.shortcuts import render
from .models import UserAccount


# Create your views here.

def index(request):
    r = request.POST
    if len(r) == 3:
        #then it is the login POST
        pass
    elif len(r) == 5:
        #then it is the register POST

        UserAccount.objects.create(username= r['username'], password=r['password'], email=r['email'], is_active = True )

    else:
        #raise an exception becouse something went wrong
        print(" !!! ERROR, something when wrong with the login/register POST !!!")

    # print(r) ## Delete, debuging purposes!!
    # print(r.json())
    print(r)
    size = len(r)
    print(size)
    return render(request, 'pages/index.html')
