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
% Compress the image using the closest-rank 70 matrices
k = 70;
Gk = u(:,1:k)*s(1:k,1:k)*v(:,1:k)';
figure, imagesc(Gk),colormap(gray);
axis image;
% Compute the number of elements stored in the maatrices
% Number of elements in matrix from the full picture
spaceFull = numel(s)+numel(u)+numel(v');
% Number of elements in the matrix from the compressed image
spacek = numel(s(1:k,1:k))+numel(u(:,1:k))+numel(v(:,1:k)');
% Calculate the percent of space saved
savedSpace = (spaceFull-spacek)./spaceFull;