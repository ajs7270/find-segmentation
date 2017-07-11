% 이미지를 읽고 마우스 입력을 받는다
picture = imread('images.jpg');
picture = rgb2gray(picture);
imshow(picture)
[x,y]=ginput(1);

%마우스 입력을 바탕으로 각 vertex의 iso-value를 저장!
vertex_1 = picture(floor(y),floor(x));
vertex_2 = picture(floor(y),floor(x)+1);
vertex_3 = picture(floor(y)+1,floor(x)+1);
vertex_4 = picture(floor(y)+1,floor(x));

%bi-linear interpolation
input_value = (((floor(x)+1-x)*vertex_1)+(x-floor(x))*vertex_2)*(floor(y)+1-y)+...
(((floor(x)+1-x)*vertex_4)+(x-floor(x))*vertex_3)*(y-floor(y));

%초기 x,y좌표 저장
initial_x = x;
initial_y = y;

%segmentation값을 저장
ans_point = [x; y];

%예외처리
if vertex_1 == input_value && vertex_2 == input_value &&...
        vertex_3 == input_value && vertex_4 == input_value

    fprintf('???? ????!\n')
    close(1)
%맨처음 임의로 시작포인트를 잡아서 다음 좌표로 넘겨준다.

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

    %아래쪽으로 넘겨준다 case 1, 6, 9,14
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

    %왼쪽으로 넘겨준다. case 7, 8
    else

            y = y-1;

            vertex_1 = picture(floor(y),floor(x));
            vertex_2 = picture(floor(y),floor(x)+1);
            vertex_3 = picture(floor(y)+1,floor(x)+1);
            vertex_4 = picture(floor(y)+1,floor(x));

            index = 1;
    end
     i=1;
     %방향정보와 marching squares를 바탕으로 contour를 시작!
    %(x ~= initial_x) || (y ~= initial_y)
    while (1)

        i = i+1;
        %index 는 방향
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

         if (abs(initial_x-ans_point(1,i))<1 && abs(initial_x-ans_point(2,i))<1)
              break;
    end
    plot(ans_point(1,:),ans_point(2,:))
end
