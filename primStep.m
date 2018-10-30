function [v,mov,movTArr] = primStep(v,dt,M,prim,t,mov,movDt,bigN)
    movK = 1;
    movT = 0;
    movSize = size(mov);
    movTArr = zeros(1,movSize(2));
    for ii = 1:M,
        v0_t = prim(v,t);
        v1 = v+v0_t*dt/2;
        v1_t = prim(v1,t+dt/2);
        v2 = v+v1_t*dt/2;
        v2_t = prim(v2,t+dt/2);
        v3 = v+v2_t*dt;
        v3_t = prim(v3,t+dt);
        
        v = v + dt*(v0_t+2*(v1_t+v2_t)+v3_t)/6;
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