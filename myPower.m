function [v,l] = myPower(v, L, k)
    v = v/(norm(v,2));
    for i = 1 : k
        w = L*v;
        v = w/(norm(w,2));
        l = v'*L*v;
    end
    disp(v);
end
