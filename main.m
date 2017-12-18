imgH=readImages('h');
imgS=readImages('s');
imgU=readImages('u');
imgN=readImages('n');
imgY=readImages('y');

[mH,eH]=KeyVector(imgH);
[mS,eS]=KeyVector(imgS);
[mU,eU]=KeyVector(imgU);
[mN,eN]=KeyVector(imgN);
[mY,eY]=KeyVector(imgY);

mT = getTestKeyVector(x);

distH = mahalanobis(mT,mH,eH);
distS = mahalanobis(mT,mS,eS);
distU = mahalanobis(mT,mU,eU);
distN = mahalanobis(mT,mN,eN);
distY = mahalanobis(mT,mY,eY);

distArray = [distH,distS,distU,distN,distY];
minDist= min(distArray);

if(minDist==distH)
    display("Sonu�: 'H'");
elseif(minDist==distS)
    display("Sonu�: 'S'");
elseif(minDist==distU)
    display("Sonu�: 'U'");
elseif(minDist==distN)
    display("Sonu�: 'N'");
elseif(minDist==distY)
    display("Sonu�: 'Y'");
end