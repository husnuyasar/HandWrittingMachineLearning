function [ meanKV,eKV ] = KeyVector( images )
    KV = {};
    for xx=1:length(images)
        img = images{xx};
        KV{xx} = findKeyVector(img);
    end
    
    meanKV = calcMean(KV);
    eKV = calcE(KV, meanKV);
    %eKV = cov(meanKV);
end

