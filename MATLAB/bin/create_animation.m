function create_animation(orientation, input)
    power= input.Data
    angles= orientation.Data
    h= figure;
    axis tight manual
    filename= 'test_animated.gif'
    p0=[0 0];
    l=1;
    p0_v=[1.5 0];
    l_v=0.5;
    [m,~]= size(angles);
    for n=1:1:m
        dp=[l*sin(angles(n)*pi), l*cos(angles(n)*pi)];
        quiver(p0(1),p0(2),dp(1),dp(2),0)
        dp_v= [l_v*sin(pi*power(n)/10) l_v*cos(pi*power(n)/10)];
        hold on
        quiver(p0_v(1),p0_v(2), dp_v(1), dp_v(2),0);
        axis([-1 2.5 0 1.5]);
        drawnow
        hold off
        %pause(0.1)
        %MEGLIO MOSTRARE IN DIRETTA, LA GIF NON RENDE ABBASTANZA...
        %frame= getframe(h);
        %im= frame2im(frame);
        %[imind,cm]= rgb2ind(im, 256);
        %if n==1
         %   imwrite(imind, cm, filename, 'gif', 'Loopcount',inf);
        %else
         %   imwrite(imind, cm, filename, 'gif', 'WriteMode', 'append');
        %end
    end
end