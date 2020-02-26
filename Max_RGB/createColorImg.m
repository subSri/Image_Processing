k=zeros(128,128,3)
k(:,:,3)=150
imwrite(uint8(k),'/home/cse/Desktop/LessBrightBlue.png','Mode','lossless')