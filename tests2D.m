function [] = tests2D(type,count)
    if type==5
        for ii=0:4
            tests2D(ii,count);
        end
        return;
    end
    N_vals = [100 200 400 800];
    N_len = size(N_vals);
    N_len = N_len(2);
    L2 = zeros(count,N_len);
    time = zeros(count,N_len);
    if type==0
        two_dee = @simple2D;
        filename = 'simpConv';
    end
    if type==1
        two_dee = @inter2D;
        filename = 'interConv';
    end
    if type==2
        two_dee = @pol2D;
        filename = 'polConv';
    end
    if type==3
        two_dee = @junc2D;
        filename = 'juncConv';
    end
    if type==4
        two_dee = @polJunc2D;
        filename = 'pjConv';
    end
    for ii=0:(count-1)
        for jj=1:N_len
            tic;
            L2(ii+1,jj) = two_dee(rem(ii,2), ...
                                   floor(ii/2),5,N_vals(jj));
            time(ii+1,jj) = toc;
        end
    end
    logL2 = diff(log2(L2)')';
    save(filename);
end


[polDL, polUL] = Junction_4(50);
deriv = @HOM4_D_VAR_NARROW;
HIL = deriv(51, 0.02, ones(51,1));
HIL = deriv(101, 0.02, ones(101,1));
 
HID = deriv(51, 0.02, ones(51,1));
polLD = HIL*polDL'/HID;
polLU = HIL*polUL'/HID;
polRL = [polDL; polUL];
polLR = [polLD polLU];
eig(HIL*(eye(101)-polLR*polRL));
eig(HIL*(eye(101)-polLR*polRL))