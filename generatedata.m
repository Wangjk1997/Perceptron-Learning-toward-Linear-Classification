vector1 = [5,-0.4,2];
vector2 = [5,-0.4,2];
sample_number = 50;
sample_1 = 1;
sample_2 = 1;
class_1 = zeros(50,3); 
class_2 = zeros(50,3);

while (sample_1 <= sample_number)
    tmp =[1, 100 * (rand - 0.5) ,100 * (rand - 0.5)];
    if (tmp * vector1'> 0)
        class_1(sample_1,:) = tmp;
        sample_1 =sample_1 + 1;
    end
end
while (sample_2 <= sample_number)
    tmp =[1, 100 * (rand - 0.5) ,100 * (rand - 0.5)];
    if (tmp * vector2'< 0)
        class_2(sample_2,:) = tmp;
        sample_2 =sample_2 + 1;
    end
end
