function [v,mov,movTArr] = bisStep(v,v_prev,dt,M,bis,t,mov,movDt,bigN)
    movK = 1;
    movT = 0;
    movSize = size(mov);
    movTArr = zeros(1,movSize(2));
    dtSq = dt^2;
    dtSqDiv = dtSq/12;
    for ii = 1:M,
        v_tt = bis(v,t,dtSq);
        temp = v;
        v = 2*v-v_prev+dtSq*v_tt;
        v_prev = temp;
        
        % increment
        t = t + dt;

        % record
        while (t>=movT),
            mov(:,movK) = v(1:bigN);
            movTArr(movK) = t;
            movT = movT + movDt;
            movK = movK + 1;
        end
    end
    v = v(1:bigN);
end