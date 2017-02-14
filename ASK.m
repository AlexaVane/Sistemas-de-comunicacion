function ASK(g,f)
%Modulación ASK

if nargin > 2 %ANALIZA EL NUEMRO DE ARGUMENTOS QUE ENTRA A LA FUNCION
    error('Demasiados argumentos de entrada')
elseif nargin==1
    f=1;
end

if f<1;
    error('La frecuencia ingresada debe ser mayor que 1');
end

t=0:2*pi/99:2*pi;
cp=[];
mod=[];
bit=[];

for n=1:length(g);
    if g(n)==0;
        die=ones(1,100);
        se=zeros(1,100);
    else g(n)==1;
        die=2*ones(1,100);
        se=ones(1,100);
    end
    c=sin(f*t);
    cp=[cp die];
    mod=[mod c];
    bit=[bit se];
end
ask=cp.*mod;

subplot(3,1,1);
plot(bit,'LineWidth',1.5);
grid on;
title('Señal Binaria');
axis([0 100*length(g) -2 2]);

subplot(3,1,2);
plot(ask,'LineWidth',1.5);
grid on;
title('modulación ASK');



