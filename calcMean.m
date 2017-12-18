function [ meanKV ] = calcMean( KV )
meanKV = zeros(8,1);
    for yy=1:20
        tmpKV = KV{yy};
        meanKV = meanKV + tmpKV;
    end
    meanKV = meanKV/20;
end

