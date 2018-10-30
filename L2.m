function dist = L2(v1,v2,h)
    dff = v1 - v2;
    dist = sum(dff.*conj(dff));
    dist = sqrt(dist*h^2); 
end

