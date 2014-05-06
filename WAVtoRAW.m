files = dir('wav'); 
names = {files.name};

h = waitbar(0,'CONVERTING: WAV -> RAW...');

for z=3:length(names)
    waitbar((z-3)/(length(names)-3));
    inname = strcat('wav/', names{z});
    outname = strcat('raw/', [names{z}(1:end-4), '.raw']);
    
    system(['sox -V -r 8000 -c 1 -s ',inname, ' ', outname]);
   
end
close(h);
