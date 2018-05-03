iter_rate = zeros(1,100);
separation = 150;
for j = 1:100
    time_sum = zeros(1,20);
    rate = j/100;
    for t = 1:20
        generatedata;
        sample_2 = 1;
        d_x = separation/((-0.4)^2+2^2)^0.5 * 2;
        d_y = separation/((-0.4)^2+2^2)^0.5 * 0.4;
        while (sample_2 <= sample_number)
            class_2(sample_2,:) = class_2(sample_2,:) + d_x*[0,1,0] -d_y*[0,0,1];
            sample_2 =sample_2 + 1;
        end
        w = [1,0,0.1];
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
        time_sum(t)=time;
    end
    iter_rate(j) = mean(time_sum);
end
plot(0.01:0.01:1,iter_rate);hold on;
xlabel('learning rate');
ylabel('iteration');
title('separation = 150')