％效用模型绘图
S0=14
S2=2.3
S3=3.45
x=0:0.5:30;
if x <= 3
    y=S0-x*p;
else if x<=15
        y=S0+(x-3)*S2-x*p;
    else y=S0+(x-15)*S3+12*S2-x*p;
    end
end
plot(x,y);
xlabel('出租车载客效益');
ylabel('出租车载客行驶里程')
%出租车单位里程效用模型绘图
S0=14
S2=2.3
S3=3.45
x=0:0.5:30;
if x <= 3
    y=S0-x*p;
else if x<=15
        y=S0+(x-3)*S2-x*p;
    else y=S0+(x-15)*S3+12*S2-x*p;
    end
end
z=diff(y,x)
plot(x,z);
xlabel('出租车单位行驶里程载客效益');
ylabel('出租车载客行驶里程')
%Monte Carlo仿真出租车载客过程
clear
%第一部分， 取人和车到达的时间,服从泊松分布
A=zeros(1,1500);%车
a=zeros(1,1500);%人
A =10*poissrnd(120 ,1,1500);    %泊松
a= 10*poissrnd( 60 ,1,1500);
A=sort(A);                    %排序
a=sort(a);
start=ones(1,1500);%开始时间
start(1)=max(A(1),a(1));%定义
x=zeros(1,1500);%顺序
for i=1:1500
    x(i)=i;
end
for i=1:1500
    x(i)=i;
    A(i)=poissrnd(A(i));
end
%取平均上车时间
ten=50*ones(1,1500);%乘客上车时间
s=exprnd(0.01,1,1500);
s=20*s+ten;
beterA=max(A,a);
for i=1:1499
enD(i)=s(i)+start(i);
zxc=enD(i);
vbn=max(A(i+1),a(i+1));
start(i+1)=max(zxc,vbn);
end
enD(1500)=s(1500)+start(1500);
E=enD-A;
e=enD-a;
AVG1=mean(E)
AVG2=mean(e)
figure
plot(x,E)
xlabel('出租车拉客次序')
set(gca,'fontsize',16.5)
ylabel('对应的等待时间')
set(gca,'fontsize',16.5)
figure
plot(x,e)
xlabel('乘客坐车次序')
set(gca,'fontsize',16.5)
ylabel('对应的等待时间')
set(gca,'fontsize',16.5)

%单位开车时间短途载客出租车收益模型绘图
S0=14
S2=2.3
S3=3.45
v=53.25
x=0:0.5:30;
if x <= 3
    y=v*(S0-x*p)/2*x;
else if x<=15
        y=v*(S0+(x-3)*S2-x*p)/2*x;
    else y=v*(S0+(x-15)*S3+12*S2-x*p)/2*x;
    end
end
 
plot(x,y);
xlabel('单位开车时间承载短途出租车单位载客效益');
ylabel('出租车载客行驶里程')
%根据收集到的信息画出每天每小时的航班数及人流量
subplot(2,2,1);
plot(x1,y1);
xlabel('时间');
ylabel('航班数');
subplot(2,2,3);
subplot(2,2,2);
plot(x2,y2);
xlabel('时间');
ylabel('客流量');
plot(x2,y3);
xlabel('时间');
ylabel('航班数');
subplot(2,2,4);
plot(x,y4);
xlabel('时间');
ylabel('航班数');
%梯度下降法计算参数值
function [k ender]=steepest(f,x,e)
%梯度下降法,f为目标函数（两变量x1和x2）
syms x1 x2 m; %m为学习率
d=-[diff(f,x1);diff(f,x2)]; 
flag=1;  
k=0; 
while(flag)
    d_temp=subs(d,x1,x(1));      
    d_temp=subs(d_temp,x2,x(2));
    nor=norm(d_temp); 
    if(nor>=e
        x_temp=x+m*d_temp;            
        f_temp=subs(f,x1,x_temp(1)); 
        f_temp=subs(f_temp,x2,x_temp(2));
        h=diff(f_temp,m);  
        m_temp=solve(h);   
        x=x+m_temp*d_temp; 
        k=k+1;
    else
        flag=0;
    end
end
ender=double(x); 
end
print(x1,x2)
%计算公平系数
function [k ender]=steepest(f,x,e)
syms x1 x2 m;
d=-[diff(f,x1);diff(f,x2)]; 
flag=1;  
k=0; 
while(flag)
    d_temp=subs(d,x1,x(1));      
    d_temp=subs(d_temp,x2,x(2));
    nor=norm(d_temp); 
    if(nor>=e
        x_temp=x+m*d_temp;            
        f_temp=subs(f,x1,x_temp(1)); 
        f_temp=subs(f_temp,x2,x_temp(2));
        h=diff(f_temp,m);  
        m_temp=solve(h);   
        x=x+m_temp*d_temp; 
        k=k+1;
        z=((S1/(1+x1)+S2)^2)/(2*((S1/(1+x1)^2+S2^2))
        print(z,k)
    else
        flag=0;
    end
end
ender=double(x); 
end
plot(k,z)