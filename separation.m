sample_2 = 1;
separate = 10;
d_x = separate/((-0.4)^2+2^2)^0.5 * 2;
d_y = separate/((-0.4)^2+2^2)^0.5 * 0.4;
while (sample_2 <= sample_number)
    class_2(sample_2,:) = class_2(sample_2,:) + d_x*[0,1,0] -d_y*[0,0,1];
    sample_2 =sample_2 + 1;
end