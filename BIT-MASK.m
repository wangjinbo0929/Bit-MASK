clc
clear all;
close all;
m = 0;
imgPath = 'C:\Users\Administrator\Desktop\bite\';  % Image library path
image_result_dir = 'C:\Users\Administrator\Desktop\bite\one\2\';  % Path for storing processed images
special_image_dir = 'C:\Users\Administrator\Desktop\bite\';
% imgPath = 'D:\BaiduNetdiskDownload\dataset_logo\logo\train\';   % Image library path
% image_result_dir = 'D:\BaiduNetdiskDownload\dataset_logo\logo_bit3\train\';  % Path for storing processed images

if(exist(image_result_dir, 'dir') ~= 7)     % Check if the directory exists
   mkdir(image_result_dir);                  % Create the directory if it does not exist
end 

imgDir = dir([imgPath '*.png']); % List all PNG files in the image library
for k = 1:length(imgDir)          % Iterate over the list to process each image
    path = [imgPath imgDir(k).name];
    rgb = imread(path); % Read each image
    [r,c,t]=size(rgb);
    if (size(rgb,3)<3)
        copyfile(path,special_image_dir);
        continue;
    end
    clear rgb_change;
    for i=1:r
        for j=1:c
              rgb_r1 = uint8(rgb(i,j,1));
              mask = uint8(bitcmp(2, 'uint8'));  % Invert and convert to uint8
%               tem_r1 = floor(double(rgb_r1)/2);  % Floor division
%               tem_r1 = uint8(tem_r1)*2;  % Set to zero
%               tem_r2 = floor(double(tem_r1)/4);
%               tem_r2 = uint8(tem_r2)*4;
%               tem_r3 = floor(double(tem_r2)/8);
%               tem_r3 = uint8(tem_r3)*8;
%               tem_r4 = floor(double(tem_r3)/16);
%               tem_r4 = uint8(tem_r4)*16;
%               tem_r5 = floor(double(tem_r4)/32);
%               tem_r5 = uint8(tem_r5)*32;
%               tem_r6 = floor(double(tem_r5)/64);
%               tem_r6 = uint8(tem_r6)*64;
%               tem_r7 = floor(double(tem_r6)/128);
%               rgb_change(i,j,1) = uint8(tem_r1)*2;
              rgb_change(i,j,1) = bitand(rgb_r1, mask);  % Perform bitwise AND operation with the inverted number

              rgb_g1 = uint8(rgb(i,j,2));
%               tem_g1 = floor(double(rgb_g1)/2);
%               tem_g1 = uint8(tem_g1)*2;
%               tem_g2 = floor(double(tem_g1)/4);
%               tem_g2 = uint8(tem_g2)*4;
%               tem_g3 = floor(double(tem_g2)/8);
%               tem_g3 = uint8(tem_g3)*8;
%               tem_g4 = floor(double(tem_g3)/16);
%               tem_g4 = uint8(tem_g4)*16;
%               tem_g5 = floor(double(tem_g4)/32);
%               tem_g5 = uint8(tem_g5)*32;
%               tem_g6 = floor(double(tem_g5)/64);
%               tem_g6 = uint8(tem_g6)*64;
%               tem_g7 = floor(double(tem_g6)/128);
%               rgb_change(i,j,2) = uint8(tem_g1)*2;
              rgb_change(i,j,2) = bitand(rgb_g1, mask);  % Perform bitwise AND operation with the inverted number

              rgb_b1 = uint8(rgb(i,j,3));
%               tem_b1 = floor(double(rgb_b1)/2);
%               tem_b1 = uint8(tem_b1)*2;
%               tem_b2 = floor(double(tem_b1)/4);
%               tem_b2 = uint8(tem_b2)*4;
%               tem_b3 = floor(double(tem_b2)/8);
%               tem_b3 = uint8(tem_b3)*8;
%               tem_b4 = floor(double(tem_b3)/16);
%               tem_b4 = uint8(tem_b4)*16;
%               tem_b5 = floor(double(tem_b4)/32);
%               tem_b5 = uint8(tem_b5)*32;
%               tem_b6 = floor(double(