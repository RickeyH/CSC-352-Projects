 % Read the image
chapel = imread('Chapel.jpeg');
% Convert the image into greyscale
chapelG= rgb2gray(chapel);
% Convert the image to double
chapelD = double(chapelG);
% Display the image
figure, colormap(gray), image(chapelD);
