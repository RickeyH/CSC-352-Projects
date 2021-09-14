% Read the image
A = imread('Chapel.jpeg');
% Convert the image into greyscale
Ag = rgb2gray(A);
% Convert the image to double
Ad = double(Ag);
% Display the image
figure, imagesc(Ad), colormap(gray);
axis image;
% Return the size of the image
dim = size(Ad);
% SVD
decomposition = svd(Ad);
% Plot the singular values
plot(decomposition,'*');
% Compute the size of sigma
[u,s,v] = svd(Ad);
dims = size(s);
% Compress the image using the closest-rank matrices
j = 100;
G = u(:,1:j)*s(1:j,1:j)*v(:,1:j)';
figure, imagesc(G),colormap(gray);
axis image;