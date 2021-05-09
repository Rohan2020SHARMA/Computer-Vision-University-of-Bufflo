img = imread('image.jpg');

%Get the size (rows and columns) of the image 
[r,c] = size(img);
rr=(r/3)-1;
%Wrire code to split the image into three equal parts and store them in B, G, R channels

B=imcrop(img,[1,1,c,rr]);
G=imcrop(img,[1,1*rr,c,rr]);
R=imcrop(img,[1,2*rr,c,rr]);

%concatenate R,G,B channels and assign the RGB image to ColorImg variable
ColorImg(:,:,1) = R;
ColorImg(:,:,2) = G;
ColorImg(:,:,3) = B;
imshow(ColorImg)