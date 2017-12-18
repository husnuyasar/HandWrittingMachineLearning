function [ mT ] = getTestKeyVector( f )
filename = f;
    currentimage = imread(filename);
    image = currentimage(:,:,1);
    
    mT = findKeyVector(image); % Key Vector
end

