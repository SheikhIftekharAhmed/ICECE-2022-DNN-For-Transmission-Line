function y = myrms(x,fs)

if nargin==1
    fs=2000;
end
ts=1/fs;
y=sum(x.^2);
y=y/length(y);
y=sqrt(y);

end