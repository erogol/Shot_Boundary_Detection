function[blackness] = calculate_blackness(I)
    if size(I,3) == 3
        I_gray = rgb2gray(I);
    else
        I_gray = I;
    end
    TOTAL_PIXEL = sum(sum(I_gray));
    total_pixel_num = size(I_gray,1)*size(I_gray,2);
    blackness = TOTAL_PIXEL/total_pixel_num;
end