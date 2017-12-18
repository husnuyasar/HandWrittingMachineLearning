function [ dist ] = mahalanobis( t,mKV,eKV )
    t=t';
    mKV=mKV';
    %eKV = cov(t);
    %dist = (t-mKV)*(inv(eKV))*(t-mKV).';

    dist = (t-mKV)*inv(eKV)*(t-mKV).';
end

