clc
clear
x1=5; x2=5; x3=5;
for  i=1:5
x1=(19.62+20*x2)/30;
x2=(29.43+20*x1+10*x3)/30;
x3=(24.525+10*x2)/10;
fprintf('interation %d: x1=%f x2=%f x3=%f\n',i,x1,x2,x3);
end

