function [vet] = euler_tulio (mag_obs,mag_ref,sol_obs,sol_ref)
    
//Matriz de rotação de w em relação a b
b1 = mag_obs;
b2 = sol_obs;
w1 = b1/norm(b1);
produtoVet = cross(b1,b2);
w3 = produtoVet/norm(produtoVet);
w2 = cross(w3, w1);
Cbw = [w1 w2 w3];

//Matriz de rotação de w em relação a o
r1 = mag_ref;
r2 = sol_ref;
u1 = r1/norm(r1);
produtoVetref = cross(r1,r2);
u3 = produtoVetref/norm(produtoVetref);
u2 = cross(u3, u1);
Cow = [u1 u2 u3];

//Matriz de rotação que leva o em b
Cbo = Cbw*Cow';

//Converte a matriz de rotação em ângulos de Euler
//fi123 = atan_2(Cbo(2,3), Cbo(3,3));
//teta123 = -asin(Cbo(1,3));
//psi123 = atan_2(Cbo(1,2), Cbo(1,1));

fi123 = 1;
teta123 = 1;
psi123 = 1;
endfunction
