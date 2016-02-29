function output_image= floyd_steinberg_dither(input_image_filename)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

img = imread(input_image_filename);
final = imnoise(img,'salt & pepper',0.2);
a=fspecial('average');
a1=filter2(a,final);
%final_img = floyd_steinberg_dither(img);
%column = length(img);
%row=size(img,1);


%debug%
image,imshow(uint8(a1));

%imwrite(ans,'dithered.png')
%spec='col=%d,row=%d';
%fprintf(spec,column,row);

%final_img = double(img);
%dither = zeros(size(final_img);

%for r = 1:row
    
    



end

