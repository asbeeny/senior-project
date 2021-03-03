function H = hmat(size,opt)
    n = size(1);
    o = char(opt);
    switch o
        case {'H', 'h'}
            H = reshape([eye(n/2);eye(n/2)],n/2,[]);
        case {'G', 'g'}
            H = reshape([eye(n/2);-eye(n/2)],n/2,[]);
        case {'Hi', 'hi'}
            H = reshape([eye(n/2);eye(n/2)],n/2,[])';
        case {'Gi', 'gi'}
            H = reshape([eye(n/2);-eye(n/2)],n/2,[])';
        otherwise
            sprintf('Option %s not known.',opt)
            H = 0;
    end
    H = H/norm(H);
end