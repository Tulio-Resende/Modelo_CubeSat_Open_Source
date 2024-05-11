exec('C:\Users\tulim\Dropbox\Tulio\Desafio TCC\atan_2.sci', -1)
exec('C:\Users\tulim\Dropbox\Tulio\Desafio TCC\euler.sci', -1)

//Parâmetros Iniciais
Jw = 0.015
Kiw = 0.0467
Km = 0.0264
Kpw = 0.1772
b = 5.1600e-6
//Momento de Inercia roda de reação de um Cubesat 
Jr = 3e-6
//tensão roda de reação
T = 5; 
massa_sat = 1.3 
d = 0.1 
//Momento de Inercia total satelite 
J = eye(3,3)*((massa_sat*((d^2)/6))+Jr)
vel_ang_inicial = [0 6e-3 0]';
mag_ref = [2 -5 3]';
sol_ref = [5 -1 1]';

