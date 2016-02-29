function color_table= median_cut(input_image_filename)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

img = imread(input_image_filename);
final = imnoise(img,'salt & pepper',0.1);
%[r c]= size(img);
c = length(img);
r=size(img,1);
Rep = zeros(r + 2, c + 2);
for x = 2 : r + 1
    for y = 2 : c + 1
        Rep(x,y) = img(x - 1, y - 1);
    end
end
B = zeros(r, c);
for x = 1 : r
    for y = 1 : c
        for img = 1 : 3
            for j = 1 : 3
                q = x - 1;     w = y -1;
                array((img - 1) * 3 + j) = Rep(img + q, j + w);
            end
        end
        B(x, y) = median(array(:));
    end
end

%a=fspecial('average');
%a1=filter2(a,final);
%final_img = floyd_steinberg_dither(img);
%column = length(img);
%row=size(img,1);


%debug%
image,imshow(array);
%image,imshow(uint8(img));


%spec='col=%d,row=%d';
%fprintf(spec,column,row);

%final_img = double(img);
%dither = zeros(size(final_img);

%for r = 1:row
    
    



end