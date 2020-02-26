function reduceRGB_job0(intermkey, intermValIter, outKVStore)
    start_ = find(intermkey == '/',1,'last');
	end_ = find(intermkey == '.',1,'last');
	key = intermkey(start_+1:end_-1);
    while(hasnext(intermValIter))
      
        add(outKVStore,key,getnext(intermValIter));
    
    end
end
        
            
            