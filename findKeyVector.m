function [ y ] = findKeyVector( x )
    y = zeros(8,1);
    for i=1:8
        if i==1
            tmpx = 1;
            tmpy = 1;
            xAx = 1;
            yAx = 1;
        elseif i==2
            tmpx = 1;
            tmpy = 100;
            xAx = 1;
            yAx = 0;
        elseif i==3
            tmpx = 1;
            tmpy = 200;
            xAx = 1;
            yAx = -1;
        elseif i==4
            tmpx = 100;
            tmpy = 1;
            xAx = 0;
            yAx = 1;
        elseif i==5
            tmpx = 100;
            tmpy = 200;
            xAx = 0;
            yAx = -1;
        elseif i==6
            tmpx = 200;
            tmpy = 1;
            xAx = -1;
            yAx = 1;
        elseif i==7
            tmpx = 200;
            tmpy = 100;
            xAx = -1;
            yAx = 0;
        elseif i==8
            tmpx = 200;
            tmpy = 200;
            xAx = -1;
            yAx = -1;
        end
        
        for aa=1:200
            if x(tmpx,tmpy) == 0
                y(i) = aa;
                break;
            else
                tmpx = tmpx+xAx;
                tmpy = tmpy+yAx;
            end
        end
    end

end

