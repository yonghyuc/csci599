function refFoodAmt = refFoodAmt(pettype,weight)
fname = pettype + ".txt";
f = dlmread(fname);
rows = size(f,1);
for i = 1:rows
    if f(i,1) < weight && f(i,2) + 1 >= weight
        refFoodAmt = f(i,2);
    end
end



