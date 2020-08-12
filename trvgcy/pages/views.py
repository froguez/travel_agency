from django.shortcuts import render
from .models import UserAccount
from .choices import destination, check_in, check_out, price_limit


# Create your views here.

def index(request):

    context = {
        'destination':destination,
        'check_in':check_in,
        'check_out':check_out,
        'price_limit':price_limit
    }


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
    return render(request, 'pages/index.html', context)
