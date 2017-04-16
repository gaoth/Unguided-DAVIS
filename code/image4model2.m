clear
Files = dir(fullfile('DAVIS/mask4test/images'));

for i=1168:1378
    Img=imread(['DAVIS/test_model1/' Files(i).name]);
    mask=imread(['DAVIS/mask4test/images/' Files(i-1).name]);
    mask=imresize(mask,[480, 854]);
    Img(:,1:854,2)=mask(:,:,1);
    if str2double(Files(i).name(end-8:end-4))~=0
        imwrite(Img,['DAVIS/image4test/' Files(i).name])
    else
    end
end