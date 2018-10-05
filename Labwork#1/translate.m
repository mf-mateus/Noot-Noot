function translate(unit,axis)
    global h;
    if(axis=='X')t_a='XData';end
    if(axis=='Y')t_a='YData';end
    if(axis=='Z')t_a='ZData';end
    fprintf(t_a)
    for i = 1:6 % Corre as 6 Faces
        set(h(i), t_a, get(h(i), t_a)+unit); %Set vertices antigo+n_unidades
    end
end
