% ?? ???? ???? ? ??? ?? ????
picture = imread('images.jpg');
picture = rgb2gray(picture);
imshow(picture)
[x,y]=ginput(1);

%?? ?? ?????!
vertex_1 = picture(floor(y),floor(x));
vertex_2 = picture(floor(y),floor(x)+1);
vertex_3 = picture(floor(y)+1,floor(x)+1);
vertex_4 = picture(floor(y)+1,floor(x));

%bi-linear interpolation
input_value = (((floor(x)+1-x)*vertex_1)+(x-floor(x))*vertex_2)*(floor(y)+1-y)+...
(((floor(x)+1-x)*vertex_4)+(x-floor(x))*vertex_3)*(y-floor(y));

%??? ??? ?? ??? ??
initial_x = x;
initial_y = y;

%??? ???? ??? ??
ans_point = [x; y];

%???? ?? ?? (1?? ??)
if vertex_1 == input_value && vertex_2 == input_value &&...
        vertex_3 == input_value && vertex_4 == input_value
    
    fprintf('???? ????!\n')
    close(1)
%?? -> ? ??? ??? ???? ??? ?? ??? ???? ???? ?? ??? ?? ?????
%(14?? ??)
else
    %case 2, 3, 4, 5, 10, 11, 12, 13
    if (vertex_1 < input_value && vertex_2 < input_value &&...
        vertex_3 >= input_value && vertex_4 < input_value)||...
        (vertex_1 < input_value && vertex_2 < input_value &&...
        vertex_3 >= input_value && vertex_4 >= input_value)||...
        (vertex_1 < input_value && vertex_2 >= input_value &&...
        vertex_3 < input_value && vertex_4 < input_value)||...
        (vertex_1 < input_value && vertex_2 >= input_value &&...
        vertex_3 < input_value && vertex_4 >= input_value)||...
        (vertex_1 >= input_value && vertex_2 < input_value &&...
        vertex_3 >= input_value && vertex_4 < input_value)||...
        (vertex_1 >= input_value && vertex_2 < input_value &&...
        vertex_3 >= input_value && vertex_4 >= input_value)||...
        (vertex_1 >= input_value && vertex_2 >= input_value &&...
        vertex_3 < input_value && vertex_4 < input_value)||...
        (vertex_1 >= input_value && vertex_2 >= input_value &&...
        vertex_3 < input_value && vertex_4 >= input_value)
        %???? ????
        x= x+1;
        
        vertex_1 = picture(floor(y),floor(x));
        vertex_2 = picture(floor(y),floor(x)+1);
        vertex_3 = picture(floor(y)+1,floor(x)+1);
        vertex_4 = picture(floor(y)+1,floor(x));
        %?????? ?????????? ?????????? ???? index ????
        index = 4;
    
    %case 1, 6, 9,14
    elseif (vertex_1 < input_value && vertex_2 < input_value &&...
            vertex_3 < input_value && vertex_4 >= input_value)||...
            (vertex_1 < input_value && vertex_2 >= input_value &&...
            vertex_3 >= input_value && vertex_4 < input_value)||...
            (vertex_1 >= input_value && vertex_2 < input_value &&...
            vertex_3 < input_value && vertex_4 >= input_value)||...
            (vertex_1 >= input_value && vertex_2 >= input_value &&...
            vertex_3 >= input_value && vertex_4 < input_value)
    
            y = y+1;
            
            vertex_1 = picture(floor(y),floor(x));
            vertex_2 = picture(floor(y),floor(x)+1);
            vertex_3 = picture(floor(y)+1,floor(x)+1);
            vertex_4 = picture(floor(y)+1,floor(x));

            index = 2;
  
    %case 7, 8
    else
        
            y = y-1;

            vertex_1 = picture(floor(y),floor(x));
            vertex_2 = picture(floor(y),floor(x)+1);
            vertex_3 = picture(floor(y)+1,floor(x)+1);
            vertex_4 = picture(floor(y)+1,floor(x));

            index = 1;                
    end
     i=1; 
     %?? ????? ??? ? ?? ????!
    %(x ~= initial_x) || (y ~= initial_y)
    while (1)
          
        i = i+1;
        %index ?? ????!
        %?????? ?????? ??!
        if index == 2
            %linear interpolation (y???? ?????? x???? ????!)
            per_x = (input_value - vertex_1)/(vertex_2 - vertex_1);
            ans_point(1,i) =floor(x) + per_x;
            ans_point(2,i)= floor(y) + 1;
            %???? ?????? ???????? ??????! ???????? ????????!
            
            %?????????? ??????!
            %?????? ????! case 6 , 9
            if (vertex_1 < input_value && vertex_2 >= input_value &&...
                vertex_3 >= input_value && vertex_4 < input_value)||...
                (vertex_1 >= input_value && vertex_2 < input_value &&...
                vertex_3 < input_value && vertex_4 >= input_value)
            
                y = y+1;

                vertex_1 = picture(floor(y),floor(x));
                vertex_2 = picture(floor(y),floor(x)+1);
                vertex_3 = picture(floor(y)+1,floor(x)+1);
                vertex_4 = picture(floor(y)+1,floor(x));

                index = 2;
            %???????? ??! case 5, 7, 8
            elseif  (vertex_1 < input_value && vertex_2 >= input_value &&...
                    vertex_3 < input_value && vertex_4 >= input_value)||...
                    (vertex_1 < input_value && vertex_2 >= input_value &&...
                    vertex_3 >= input_value && vertex_4 >= input_value)||...
                    (vertex_1 >= input_value && vertex_2 < input_value &&...
                    vertex_3 < input_value && vertex_4 < input_value)
                
                    x = x-1;

                    vertex_1 = picture(floor(y),floor(x));
                    vertex_2 = picture(floor(y),floor(x)+1);
                    vertex_3 = picture(floor(y)+1,floor(x)+1);
                    vertex_4 = picture(floor(y)+1,floor(x));

                    index = 3;
            %?????????? ???? case 4, 10, 11        
            else
                    x= x+1;

                    vertex_1 = picture(floor(y),floor(x));
                    vertex_2 = picture(floor(y),floor(x)+1);
                    vertex_3 = picture(floor(y)+1,floor(x)+1);
                    vertex_4 = picture(floor(y)+1,floor(x));

                    index = 4;
            end
            
        %???????? ?????? ??!
        elseif index == 1
          %linear interpolation (y???? ?????? x???? ????!)
            per_x = (input_value - vertex_4)/(vertex_3 - vertex_4);
            ans_point(1,i) =floor(x) + per_x;
            ans_point(2,i)= floor(y);
            %???? ?????? ???????? ??????! ???????? ????????!
            
            %?????????? ??????!
            %???? ????! case 6, 9
            if  (vertex_1 < input_value && vertex_2 >= input_value &&...
                vertex_3 >= input_value && vertex_4 < input_value)||...
                (vertex_1 >= input_value && vertex_2 < input_value &&...
                vertex_3 < input_value && vertex_4 >= input_value)
            
                y = y-1;

                vertex_1 = picture(floor(y),floor(x));
                vertex_2 = picture(floor(y),floor(x)+1);
                vertex_3 = picture(floor(y)+1,floor(x)+1);
                vertex_4 = picture(floor(y)+1,floor(x));

                index = 1;
            %???????? ????! case 1, 10, 14   
            elseif (vertex_1 < input_value && vertex_2 < input_value &&...
                    vertex_3 < input_value && vertex_4 >= input_value)||...
                    (vertex_1 >= input_value && vertex_2 < input_value &&...
                    vertex_3 >= input_value && vertex_4 < input_value)||...
                    (vertex_1 >= input_value && vertex_2 >= input_value &&...
                    vertex_3 >= input_value && vertex_4 < input_value)
                
                    x = x-1;

                    vertex_1 = picture(floor(y),floor(x));
                    vertex_2 = picture(floor(y),floor(x)+1);
                    vertex_3 = picture(floor(y)+1,floor(x)+1);
                    vertex_4 = picture(floor(y)+1,floor(x));

                    index = 3;
            %?????????? ????! case 2, 5, 13        
            else
                    x= x+1;

                    vertex_1 = picture(floor(y),floor(x));
                    vertex_2 = picture(floor(y),floor(x)+1);
                    vertex_3 = picture(floor(y)+1,floor(x)+1);
                    vertex_4 = picture(floor(y)+1,floor(x));

                    index = 4;                   
            end
            
        %???????? ?????? ??!    
        elseif index == 4
            %linear interpolation (x???? ?????? y???? ????!)
            per_y = (input_value - vertex_1)/(vertex_4 - vertex_1);
            ans_point(1,i) =floor(x);
            ans_point(2,i)= floor(y) + per_y;
          
            %???? ?????? ???????? ??????! ???????? ????????!
        
            %?????????? ??????!
            %?????????? ????! case 3, 12
            if (vertex_1 < input_value && vertex_2 < input_value &&...
                vertex_3 >= input_value && vertex_4 >= input_value)||...
                (vertex_1 >= input_value && vertex_2 >= input_value &&...
                vertex_3 < input_value && vertex_4 < input_value)
            
                x= x+1;

                vertex_1 = picture(floor(y),floor(x));
                vertex_2 = picture(floor(y),floor(x)+1);
                vertex_3 = picture(floor(y)+1,floor(x)+1);
                vertex_4 = picture(floor(y)+1,floor(x));

                index = 4;
            %???? ????! case 5, 7, 8   
            elseif (vertex_1 < input_value && vertex_2 >= input_value &&...
                    vertex_3 < input_value && vertex_4 >= input_value)||...
                    (vertex_1 < input_value && vertex_2 >= input_value &&...
                    vertex_3 >= input_value && vertex_4 >= input_value)||...
                    (vertex_1 >= input_value && vertex_2 < input_value &&...
                    vertex_3 < input_value && vertex_4 < input_value)
                
                    y = y-1;

                    vertex_1 = picture(floor(y),floor(x));
                    vertex_2 = picture(floor(y),floor(x)+1);
                    vertex_3 = picture(floor(y)+1,floor(x)+1);
                    vertex_4 = picture(floor(y)+1,floor(x));

                    index = 1;
            %?????? ????! case 1, 10, 14       
            else
                
                    y = y+1;

                    vertex_1 = picture(floor(y),floor(x));
                    vertex_2 = picture(floor(y),floor(x)+1);
                    vertex_3 = picture(floor(y)+1,floor(x)+1);
                    vertex_4 = picture(floor(y)+1,floor(x));

                    index = 2;
                    
            end
            
        %?????????? ?????? ??!    
        else
            %linear interpolation (x???? ?????? y???? ????!)
            per_y = (input_value - vertex_2)/(vertex_3 - vertex_2);
            ans_point(1,i) =floor(x) + 1;
            ans_point(2,i)= floor(y) + per_y;
            %???? ?????? ???????? ??????! ???????? ????????!
            
            %?????????? ??????!
            %???????? ????! case 3, 12
            if (vertex_1 < input_value && vertex_2 < input_value &&...
                vertex_3 >= input_value && vertex_4 >= input_value)||...
                (vertex_1 >= input_value && vertex_2 >= input_value &&...
                vertex_3 < input_value && vertex_4 < input_value)
           
              x = x-1;

              vertex_1 = picture(floor(y),floor(x));
              vertex_2 = picture(floor(y),floor(x)+1);
              vertex_3 = picture(floor(y)+1,floor(x)+1);
              vertex_4 = picture(floor(y)+1,floor(x));

              index = 3;
            %???? ????! case 4, 10, 11
            elseif (vertex_1 < input_value && vertex_2 >= input_value &&...
                    vertex_3 < input_value && vertex_4 < input_value)||...
                    (vertex_1 >= input_value && vertex_2 < input_value &&...
                    vertex_3 >= input_value && vertex_4 < input_value)||...
                    (vertex_1 >= input_value && vertex_2 < input_value &&...
                    vertex_3 >= input_value && vertex_4 >= input_value)
                
                    y = y-1;

                    vertex_1 = picture(floor(y),floor(x));
                    vertex_2 = picture(floor(y),floor(x)+1);
                    vertex_3 = picture(floor(y)+1,floor(x)+1);
                    vertex_4 = picture(floor(y)+1,floor(x));

                    index = 1;
            %?????? ????! case 2, 5, 13      
            else
                
                    y = y+1;

                    vertex_1 = picture(floor(y),floor(x));
                    vertex_2 = picture(floor(y),floor(x)+1);
                    vertex_3 = picture(floor(y)+1,floor(x)+1);
                    vertex_4 = picture(floor(y)+1,floor(x));

                    index = 2;
                      
            end
            
        end
    
         if (initial_x-ans_point(1,i
    end
    plot(ans_point(1,:),ans_point(2,:))
end
   


