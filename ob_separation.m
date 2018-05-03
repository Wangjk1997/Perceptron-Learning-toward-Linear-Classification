total = 100;
iter_separation = zeros(1,total);

for separation = 1:total
    time_sum = 0;
    for t = 1:100
        generatedata;
        sample_2 = 1;
        d_x = separation/((-0.4)^2+2^2)^0.5 * 2;
        d_y = separation/((-0.4)^2+2^2)^0.5 * 0.4;
        while (sample_2 <= sample_number)
            class_2(sample_2,:) = class_2(sample_2,:) + d_x*[0,1,0] -d_y*[0,0,1];
            sample_2 =sample_2 + 1;
        end
        w = [1,0,0.1];
        rate = 0.01;
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
        time_sum = time_sum + time;
    end
    iter_separation(separation) = time_sum/100;
end
plot(1:total,iter_separation);