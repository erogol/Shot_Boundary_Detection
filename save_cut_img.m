function [ output_args ] = save_cut_img( I, PATH, img_name )
%SAVE_CUT_IMG Summary of this function goes here
%   Detailed explanation goes here
imwrite(I,fullfile(PATH,img_name),'jpg');
end

