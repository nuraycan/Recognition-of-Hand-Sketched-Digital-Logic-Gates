function descriptors = FDs( boundary )
    % the boundary is a N x 2 matrix
    N=length(boundary); % Number of total boundary points
    %% centroid points
    xc=(1/N).*(sum(boundary(:,1)));
    yc=(1/N).*(sum(boundary(:,2)));
    %% Complex number s(k)
    sk = (boundary(:, 1)-xc) + 1i*(boundary(:, 2)-yc); % s(k)=xk-xc+i*(yk-yc)
    %% Fourier Transform of s(k)
    descriptorsall =  fft(sk); %z(u)
   %% Significant Descriptors from 2nd-21th.
   % We eliminate 0th and 1st descriptor
   % Divide by first descriptor 
   % Take magnitudes
    descriptors=abs(descriptorsall(3:22))./ abs(descriptorsall(2));% c(u-2)=z(u)/z(1)
 
end

