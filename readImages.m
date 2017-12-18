function [ images ] = readImages( f )
    foldername = sprintf('images/%s*',f);
    imagefiles = dir(foldername);
    nfiles = length(imagefiles);

    for ii=1:nfiles
       file = 'images/';
       currentfilename = imagefiles(ii).name;
       filename = strcat(file,currentfilename);
       currentimage = imread(filename);
       images{ii} = currentimage(:,:,1);
    end
    
    
end

