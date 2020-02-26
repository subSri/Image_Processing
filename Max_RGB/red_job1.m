function red_job1(intermkey, intermValIter, outKVStore)
max=0;  
winner = "";
while(hasnext(intermValIter))
    t=string(getnext(intermValIter));  %every value for a key is stored in intermValIter
    arr  = split(t,"/");            %this splits the string t which has fileName and maxValue in concatenation on the basis of “/”
    numb1=arr(1);               %the maxHSV value for each FIleName is stored in numb1
    fname=arr(2);           %the FileName of that MaxHSV value is stored in fname
    numb=double(numb1);      %the maxHSV is in string nad is type casted to double for comparison 
    if(numb>=max)           %checked for maximumHSV catering to each key i.e. Hue,Saturation,Brightness
        max=numb;   
        winner = fname;          %fname for maxHSv corresponding to fileName is stored in winner
    end
end
    
       %winner name is stored in output along with its maxHSV value where key is Hue,Saturation and Brightness
  add(outKVStore,intermkey,"filename = "+winner+"  total_color = "+max);  
  figure,imshow('/home/cse/Desktop/3.Max_RGB_HSV_Sub/Max_HSV/input_images/'+winner+'.png')
 
end

