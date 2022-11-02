clear all;
close all;
clc;
%% 
comp=20; %number of components
test=zeros(20,comp);
for i=1:comp
im1 = imread(strcat('F:\ee421proje\test\',['Component',num2str(i),'.jpg']));
im = im2bw(im1); % binary image
b = bwboundaries(im,8);%Trace region boundaries in binary image
b = b{1};%takes one cell of b (outer boundary)
         % if we writes b{2} it takes second cell (inner boundary)
figure, bound2im(b,100,100); %To plot boundaries
title(['Component',num2str(i)]);
%% force the number of boundary points to be even
if mod(size(b,1), 2) ~= 0
    b = [b; b(end, :)];
end
numdescr = 20;
%% extract all fourier descriptors...
f = FDs(b); % First 20 fourier descriptors(except f(0) and f(1))
test(:,i)=test(:,i)+f; % Creating matrix for all components
    
end
figure,plot(test)
title('20 Significant Fourier Descriptors for each component');
 