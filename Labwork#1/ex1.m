clc;
clear all;close all;
global h;
world_size=10;

T=[0 -1 0 5;
   0 0 -1 -2;
   1 0 0 3;
   0 0 0 1];
t=T(1:3,4);

display('Exercicio 1.1)')
%==== Cube Face Map 0-6 ====%
X = [0 1 0 0 0 0; 0 1 0 0 0 0; 0 1 1 1 1 1; 0 1 1 1 1 1];
Y = [0 0 0 0 0 1; 1 1 1 0 1 1; 1 1 1 0 1 1; 0 0 0 0 0 1];
Z = [0 0 1 0 0 0; 0 0 1 1 0 1; 1 1 1 1 0 1; 1 1 1 0 0 0];


h=fill3(X,Y,Z, 'g'); % Create Cube patches
hold on
h1=fill3(X,Y,Z, 'k'); % Create Orignal Cube patches
alpha(h1,.05); %fade
axis([-world_size world_size, -world_size world_size , -world_size world_size])
xlabel('X')
ylabel('Y')
zlabel('Z')
text(0,0,0, 'O')
w_size=900;
set(gcf, 'Position', [960-w_size/2, 540-w_size/2, w_size, w_size])
grid on

%FACE COLOR
set(h(1), 'FaceColor', 'r'); %Face(1) plane x=0
set(h(2), 'FaceColor', 'W'); %Face(2) plane x=1
set(h(3), 'FaceColor', 'b'); %Face(3) plane z=1
set(h(4), 'FaceColor', 'G'); %Face(4) plane y=0
set(h(5), 'FaceColor', 'y'); %Face(5) plane z=0
set(h(6), 'FaceColor', 'm'); %Face(6) plane y=1
%

a_inc=10; %Animation Increment
a_speed=0.1; %Animation Speed
display(' Start (Press Key)')
pause
for i=1:a_inc
    translate(t(1)/a_inc,'X')
    translate(t(2)/a_inc,'Y')
    translate(t(3)/a_inc,'Z')
    pause(a_speed)
end
%pause
%==== Rodar 30� em Reala��o Ox World ====%
display(' >Rot 30� Ox-World')
for i=1:a_inc
    rotate(h,[0 0 1],30/a_inc)
    pause(a_speed)
end
%pause
%==== Translate 3 unidades em Reala��o Oz Object ====%
display(' >Trans 3 Oz-Object')
for i=1:a_inc
    translate(3/a_inc,'Z')
    pause(a_speed)
end
%pause
%==== Rodar -45� em Reala��o a [1,-1,1] do Object inicial ====%
display(' >Rot -45� [1,-1,1]')
for i=1:a_inc
    rotate(h,[1 -1 1],-45/a_inc) %Voltar a colocar na origem e multiplicar? ou pre multiplicar?
    pause(a_speed)
end
%rotate(h,[1 -1 1],-45) %Voltar a colocar na origem e multiplicar? ou pre multiplicar?

syms alfa;
R=rot('X',-45);
% Criar Matriz Homogenea Rota��o 4x4 (Invertivel)
aTb = [R [0 0 0]' 
    0 0 0 1];


%create_cubo()
%function [h,P] = create_cubo()

   
%end


%