clc;
clear all;
close all;

a=1:input("maximum length of edges: ");
[j,k,z]=deal(1);
while k~=a(end)+1
    while j~=a(end)+1
    c(j,k)=sqrt(a(j).^2+a(k).^2);
    p(1,1)=c(j,k);
    j=j+1;
        if floor(p)==p
            pr(1,z)=j-1;
            pr(2,z)=k;
            pr(3,z)=p;
            z=z+1;
        end
    end
    k=k+1;
    j=1;
end
figure
while j~=z
    s=scatter(pr(1,j),pr(2,j),"black",".");
    row= dataTipTextRow('Hypotenus:',pr(3,j));
    s.DataTipTemplate.DataTipRows(1).Label = 'Edge:';
    s.DataTipTemplate.DataTipRows(2).Label = 'Edge:'; 
    s.DataTipTemplate.DataTipRows(end+1) = row;
    j=j+1;
    hold on
end