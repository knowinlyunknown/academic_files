for i=1:15
     retun_all=CASE1(258*(i-1)+1:258*i,:);
        STD1=std(retun_all(:,1));
        STD2=std(retun_all(:,2));
        STD3=0.05*STD1;
        STD4=0.25*STD1;
        STD5=0.05*STD2;
        STD6=0.25*STD2;
        STD7=1.7*STD1;
        STD8=5*STD1;
        STD9=1.7*STD2;
        STD10=5*STD2;
        CC=(retun_all(:,1));
        DD=(retun_all(:,2));
        
        EE=(retun_all(:,1));
        FF=(retun_all(:,2));
        
        KK=retun_all(:,1);
        MM=retun_all(:,2);
        PP=abs(retun_all(:,1));
        QQ=abs(retun_all(:,2));
   
  for j=1:258
if abs(CC(j,1))<STD3
CC(j,1)=(STD4-STD3).*rand(1) + STD3;
end

if abs(CC(j,1))>STD4
CC(j,1)=(STD4-STD3).*rand(1) + STD3;
end

%if DD(j,1)<STD5 
%DD(j,1)=(STD6-STD5).*rand(1) + STD5;
%end

%if DD(j,1)>STD6
%DD(j,1)=(STD6-STD5).*rand(1) + STD5;
%end


if abs(EE(j,1))<STD7
EE(j,1)=(STD8-STD7).*rand(1) + STD7;
end

if abs(EE(j,1))>STD8
EE(j,1)=(STD8-STD7).*rand(1) + STD7;
end

%if FF(j,1)<STD9
%FF(j,1)=(STD10-STD9).*rand(1) + STD9;
%end

%if FF(j,1)>STD10
%FF(j,1)=(STD10-STD9).*rand(1) + STD9;
%end




   end
       Corr(i)=corr2(CC,DD);
       Corr1(i)=corr2(EE,FF);
       Corr2(i)=corr2(KK,MM);
       
       
end
   
        
 
 

