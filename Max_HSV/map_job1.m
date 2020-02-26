function map_job1(data, info, intermKVStore) 
    %convert rgb array to hsv array
        hsv = rgb2hsv(data.Value{1});
        b = hsv(:,:,1);

        % Extract Saturation values
        g = hsv(:,:,2);

        % Extract Brightness values
        r = hsv(:,:,3);

        % Find average of HSV values
        avgH = mean(b(:));
        avgS = mean(g(:));
        avgV = mean(r(:));
        
    % key value pair for different attribute has the value of averageHSV concatenated with fileName
    add(intermKVStore,char("hue"),avgH+"/"+data.Key{1});
    add(intermKVStore,char("saturation"),avgS+"/"+data.Key{1});
    add(intermKVStore,char("brightness"),avgV+"/"+data.Key{1});
end

