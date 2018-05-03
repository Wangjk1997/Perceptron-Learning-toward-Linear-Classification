generatedata;
separation
% plotdata;
w = [1,0,0.1];
rate = 0.3;
sample = [class_1; -class_2];
time = 0;
while 1
    w_start = w;
	for i = 1: size(sample,1)
        w = learning(w, sample(i,:), rate);
    end
    time = time + 1;
    if (w == w_start)
        break;
    end
end
plotdata;
x = -100:1:100;
y = -(w(2)*x +w(1))/w(3);
plot(x,y);