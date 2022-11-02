function [ y ] = bound2im( b,N,M )
x=b(:, 1);
y=b(:, 2);
im=zeros(N,M);
for i=1:length(b)
    im(x(i),y(i))=  im(x(i),y(i))+1;
end
y=imshow(im);
