
reg_list=[]
for i in range(0,31):
    reg_list.append(["X"+str(i), "uint64_t","LOAD_STORE",[["Value",64]]])