function rez=iffunc(usl,A,B)
%[smth] iffunc([.bool] usl, [smth] A, [smth] B)
%��� ���������� ������: ��� ������� ��������
%���� usl==true ������ �, ����� �
if(size(A)==[1 1])
    A=ones(size(usl))*A;
end;
if(size(B)==[1 1])
    B=ones(size(usl))*B;
end;
if(size(usl)~=size(A) | size(A)~=size(B))
    error(' matrixes must be the same size');
end;
[szy szx szz]=size(usl);
for px=1:szx
for py=1:szy
for pz=1:szz
    if(usl(py,px,pz))
        rez(py,px,pz)=A(py,px,pz);
    else
        rez(py,px,pz)=B(py,px,pz);
    end;
end;
end;
end;
end

        