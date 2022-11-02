%% NURAY GUL-130505009...........%%
clear all;
close all;
clc;
%% READING AND SHOWING IMAGE
x=imread('inverter.tif');
imshow(x); 
title('Original image');
%% Convert RGB image to grayscale.
x1=rgb2gray(x);
figure,imshow(x1)
title('Graylevel Image')
%% HISTOGRAM
figure,imhist(x1)
title('Histogram')
%% Convert image to black and white image by thresholding.
y=x1<150; %Threshold=100 for and, Threshold=172 for or,Threshold=150 for inverter. Decide it by using the histogram.
figure, imshow(y)
title('Binary Image')

%% FILTERING (2-D median filtering.)

imFiltered = medfilt2(y); % medfilt2 is using to remove salt and pepper noise in image t.
imFiltered = imdilate(imFiltered, ones(4)); %dilation
figure,imshow(imFiltered)
title('Filtered and Dilated Image')
%% LABELING
[L,num]=bwlabel(imFiltered,8); % returns in NUM the number of connected objects found in imFiltered.
                               %8 is the number of connected objects, 
                               %L is the number of labels
                               %num is the number of objects 
disp(['There are ', num2str(num), ' components'])
imFiltered = imerode(imFiltered, ones(4)); %Erosion 
       
%% FINDING OBJECTS
for i=1:1:num
[r,c]=find(L==i); %this line finds the objects and their rows and columns
rmin=min(r);rmax= max(r); %minimum and maximum row values of objects
cmin=min(c);cmax=max(c) ; %minimum and maximum columns values of objects
m=imFiltered(rmin:rmax,cmin:cmax); % crops the objects from original image
m2=imresize(m,[100,100]); % Makes all images in same size
figure, imshow(m2)
imwrite(m2,strcat('F:\ee421proje\andd\',['Component',num2str(i),'.jpg'])); %save components in a folder
title(['Component number',num2str(i)]);
end

            
 



