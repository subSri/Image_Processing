mapreducer(0);    

imds = datastore('/home/cse/Desktop/3.Max_RGB_HSV_Sub/Max_HSV/input_images','Type','image','FileExtensions','.png');

output_folder = '/home/cse/Desktop/3.Max_RGB_HSV_Sub/Max_HSV/output0/';
outds = mapreduce(imds, @mapRGB_job0, @reduceRGB_job0, 'OutputFolder', output_folder);
output_folder = '/home/cse/Desktop/3.Max_RGB_HSV_Sub/Max_HSV/output1/';
%readall(outds)
ouds = mapreduce(outds, @map_job1, @red_job1, 'OutputFolder', output_folder);
readall(ouds)
