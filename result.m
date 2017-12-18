function [] = result( x )
imgH=readImages('h');
imgS=readImages('s');
imgU=readImages('u');
imgA=readImages('a');
imgY=readImages('y');

[mH,eH]=KeyVector(imgH);
[mS,eS]=KeyVector(imgS);
[mU,eU]=KeyVector(imgU);
[mA,eA]=KeyVector(imgA);
[mY,eY]=KeyVector(imgY);

mT = getTestKeyVector(x);

distH = mahalanobis(mT,mH,eH)
distS = mahalanobis(mT,mS,eS)
distU = mahalanobis(mT,mU,eU)
distA = mahalanobis(mT,mA,eA)
distY = mahalanobis(mT,mY,eY)

distArray = [distH,distS,distU,distA,distY];
minDist= min(distArray);

if(minDist==distH)
    display('Sonu�: H');
elseif(minDist==distS)
    display('Sonu�: S');
elseif(minDist==distU)
    display('Sonu�: U');
elseif(minDist==distA)
    display('Sonu�: A');
elseif(minDist==distY)
    display('Sonu�: Y');
end
end

