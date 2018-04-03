from django.http import HttpResponse
 
#importing loading from django template 
from django.template import loader


 
#our view which is a function named index
def index(request):
    
    #getting our template 
    template = loader.get_template('index.html')
    
    s=template.render({"name":"SPSel",
        "volatile":False,
        "scale_type":"uint64_t",
        "fields":[("S0",[ ("SPSel",1),   ("RES0",63)]), ("S1",[("RES1",64)])],
        })
    f=open("out.txt","w")
    f.write(s)
    f.close()


    #rendering the template in HttpResponse
    return HttpResponse("Succeed\n")
    #return HttpResponse(template.render({"my_content":"Django template by fulton shaw"}))
