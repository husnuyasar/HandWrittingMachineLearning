function [ eKV ] = calcE( KV,meanKV )
tmpeKV = zeros(8,8);

    for yy=1:20
        xy = KV{yy};
        tmp = (xy-meanKV)*(xy-meanKV).';
        tmpeKV = tmpeKV + tmp;
    end
    eKV = tmpeKV/20;
end

