clc;
clear all;
close all;
disp('Modulación (ASK y FSK)');
disp('*** modulación ASK ***');
disp('*** modulación FSK ***');
op=input('\nIngrse el tipo de modulacion que desea entre comilla simple: ');

switch op
    case 'ASK'
        b=input('\n ingrese el numero binario "[0 1 1 0 0 0 1]":  ');
        fc=input('\n ingrese la frecuencia fc:  ');
        ASK(b,fc)
    case 'FSK'
        b=input('\n ingrese el numero binario "[0 1 1 0 0 0 1]":  ');
        f_0=input('\nIngrese la frecuencia 0:  ');
        f_1=input('\nIngrese la frecuencia 1:  ');
        FSK(b,f_0,f_1)
    otherwise
        ASK_FSK
end