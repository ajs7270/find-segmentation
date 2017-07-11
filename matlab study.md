 # Matlab

<!-- toc orderedList:0 -->

- [Matlab](#matlab)
	- [필기방식](#필기방식)
	- [변수](#변수)
		- [변수의 조건](#변수의-조건)
			- [최솟값](#최솟값)
			- [최댓값](#최댓값)
			- [무한대](#무한대)
			- [오버플로우](#오버플로우)
			- [언더플로우](#언더플로우)
		- [변수의 표현](#변수의-표현)
			- [e 표기법(과학 표기법)](#e-표기법과학-표기법)
			- [*format short*](#format-short)
			- [*format short g*](#format-short-g)
			- [*format short eng*](#format-short-eng)
			- [*format long*](#format-long)
			- [*format long g*](#format-long-g)
			- [*format long eng*](#format-long-eng)
			- [*format bank*](#format-bank)
		- [변수의 선언](#변수의-선언)
			- [일반적 선언](#일반적-선언)
			- [대각행렬의 선언](#대각행렬의-선언)
			- [자료형 지정 선언](#자료형-지정-선언)
			- [구조체의 선언](#구조체의-선언)
			- [성분의 추가](#성분의-추가)
			- [: 의 사용](#의-사용)
				- [간편한 행렬의 선언](#간편한-행렬의-선언)
				- [부분집합](#부분집합)
			- [모든 성분이 1인 행렬의 선언](#모든-성분이-1인-행렬의-선언)
			- [모든 성분이 0인 행렬의 선언](#모든-성분이-0인-행렬의-선언)
			- [대각행렬의 선언](#대각행렬의-선언-1)
			- [*linspace(a,b,c)*](#linspaceabc)
			- [*meshgrid(x,y)*](#meshgridxy)
	- [행렬의 연산과 기능](#행렬의-연산과-기능)
		- [연산자](#연산자)
		- [같은 위치성분의 곱](#같은-위치성분의-곱)
		- [행렬곱](#행렬곱)
		- [행렬의 전치](#행렬의-전치)
		- [행렬을 좌우로 뒤집기](#행렬을-좌우로-뒤집기)
		- [행렬을 위아래로 뒤집기](#행렬을-위아래로-뒤집기)
		- [행렬 성분의 합](#행렬-성분의-합)
		- [행렬의 내적](#행렬의-내적)
		- [행렬의 외적](#행렬의-외적)
		- [역행렬](#역행렬)
		- [Determinant 구하기](#determinant-구하기)
		- [행렬의 나눗셈](#행렬의-나눗셈)
		- [제곱근](#제곱근)
		- [절댓값](#절댓값)
		- [부호 확인](#부호-확인)
		- [나머지 연산](#나머지-연산)
		- [몫 연산](#몫-연산)
		- [$e$의 지수승의 연산](#e의-지수승의-연산)
		- [$log$ 연산](#log-연산)
		- [올림, 반올림, 버림 연산](#올림-반올림-버림-연산)
		- [소인수 분해](#소인수-분해)
		- [최대공약수](#최대공약수)
		- [최소공배수](#최소공배수)
		- [!(펙토리얼)](#펙토리얼)
		- [C(조합)](#c조합)
		- [소수 판별](#소수-판별)
		- [삼각함수](#삼각함수)
		- [최댓값 찾기](#최댓값-찾기)
		- [중간값 찾기](#중간값-찾기)
			- [평균](#평균)
			- [중간값의 평균](#중간값의-평균)
		- [누적곱](#누적곱)
		- [size 구하기](#size-구하기)
		- [numel(x)](#numelx)
		- [표준편차](#표준편차)
		- [분산](#분산)
		- [랜덤 수 생성](#랜덤-수-생성)
			- [rand(n)](#randn)
			- [rand(n,m)](#randnm)
			- [randn(n)](#randnn)
		- [각도](#각도)
		- [실수와 허수](#실수와-허수)
			- [실수와 허수 합치기](#실수와-허수-합치기)
			- [복소수 중 실수를 꺼내기](#복소수-중-실수를-꺼내기)
			- [복소수중 허수를 꺼내기](#복소수중-허수를-꺼내기)
		- [분자와 분모를 분리](#분자와-분모를-분리)
		- [계산을 못 할 때](#계산을-못-할-때)
	- [출력](#출력)
		- [*disp('출력 내용')*](#disp출력-내용)
		- [*fprintf('출력내용 %d ', 변수)*](#fprintf출력내용-d-변수)
	- [조건문](#조건문)
		- [if else문](#if-else문)
		- [switch문](#switch문)
	- [반복문](#반복문)
		- [for문](#for문)
		- [while문](#while문)
	- [함수](#함수)
		- [함수의 선언](#함수의-선언)
		- [함수의 사용](#함수의-사용)
	- [OpenGL](#opengl)
		- [*plot(x,y)*](#plotxy)
			- [연결](#연결)
			- [성분(점)](#성분점)
			- [성분(다이아)](#성분다이아)
			- [그래프 겹치게 그리기](#그래프-겹치게-그리기)
			- [좌표평면 안에 글자 넣기](#좌표평면-안에-글자-넣기)
			- [범례설정](#범례설정)
			- [*plotyy(x,y1,x,y2)*](#plotyyxy1xy2)
			- [*comet(x,y,z)*](#cometxyz)
			- [*mesh(x)*](#meshx)
			- [*surf(x)*](#surfx)
			- [*contour(x)*](#contourx)
			- [*sphere* (구)](#sphere-구)
		- [기본 사용법](#기본-사용법)
			- [제목 설정](#제목-설정)
			- [축 이름 설정](#축-이름-설정)
			- [격자 설정](#격자-설정)
			- [화면 분할](#화면-분할)
		- [*peaks(n)*](#peaksn)
		- [다양한 그래프](#다양한-그래프)
			- [*polar(x,y)*](#polarxy)
			- [log 그래프](#log-그래프)
			- [bar 그래프](#bar-그래프)
			- [pie 그래프](#pie-그래프)
			- [histogram](#histogram)
	- [일반적인 사용법](#일반적인-사용법)
		- [수식의 사용](#수식의-사용)
			- [sym](#sym)
			- [syms](#syms)
			- [수식의 전개](#수식의-전개)
			- [수식의 인수분해](#수식의-인수분해)
			- [수식의 미분 (요소간 차분)](#수식의-미분-요소간-차분)
				- [수식이 들어갈 경우](#수식이-들어갈-경우)
					- [*diff(수식)*](#diff수식)
					- [*diff(수식,n)*](#diff수식n)
					- [*diff(수식, '변수')*](#diff수식-변수)
				- [행렬이 들어갈 경우](#행렬이-들어갈-경우)
			- [수식의 적분](#수식의-적분)
				- [int(수식)](#int수식)
				- [*int(수식, '변수')*](#int수식-변수)
				- [*int(수식, n, m)*](#int수식-n-m)
				- [*int(수식, '변수', n, m)*](#int수식-변수-n-m)
				- [*int(수식, '변수','n','m')*](#int수식-변수nm)
			- [해 구하기](#해-구하기)
			- [상미분 방정식의 해 구하기](#상미분-방정식의-해-구하기)
		- [편리한 그래프의 사용](#편리한-그래프의-사용)
			- [ezplot](#ezplot)
			- [ezcontour,ezcontourf,ezpolar](#ezcontourezcontourfezpolar)
			- [ezmesh, ezmeshc, ezsurf, ezsurfc](#ezmesh-ezmeshc-ezsurf-ezsurfc)
		- [interpolation](#interpolation)
			- [linear interpolation](#linear-interpolation)
			- [spline interpolation](#spline-interpolation)
			- [nearest inerpoltaion](#nearest-inerpoltaion)
			- [Polynomial curve fitting (다항식 곡선 피팅)](#polynomial-curve-fitting-다항식-곡선-피팅)
				- [*polyfit(x,y,차수)*](#polyfitxy차수)
				- [*polyval(다항식의 계수,x값들)*](#polyval다항식의-계수x값들)

<!-- tocstop -->

 ## 필기방식
 * *기울임* -> matlab 명령어


 ## 변수
 변수는 모두 행렬의 형태로 저장된다.

  ### 변수의 조건
  * 한글은 변수로 사용할 수 없다.
  * 영어는 63자까지 사용할 수 있다.(대소문자 구분)
  * 특수문자는 _ 만 사용 가능하다.

  > 사용할 수 있는 변수인지 확인하는 방법
  *iskeyword 변수명*
  ans = 1 (사용가능) or ans = 0 (사용불가능)



  #### 최솟값
  얼마나 세밀한 계산까지 가능한지를 뜻한다
  ![스크린샷 2016-12-17 오후 2.20.46](http://i.imgur.com/Fw0THz3.png)
  #### 최댓값
  ![스크린샷 2016-12-17 오후 2.21.03](http://i.imgur.com/Wktz9Ez.png)

  ![스크린샷 2016-12-17 오후 2.20.55](http://i.imgur.com/gPIxyc3.png)

  #### 무한대
  ![스크린샷 2016-12-17 오후 2.24.30](http://i.imgur.com/DR5DJym.png)


  #### 오버플로우
  컴퓨터는 이진수로 값을 계산하고 뺄셈은 2의 보수를 이용하여 계산을한다. 이때문에 매우 큰 수가 변수에 저장되면 MSB가 1로 바뀌는 오버플로오가 발생할 수 있다.

  #### 언더플로우
  허용되지 않은 세밀한 연산을 할 때 언더플로우가 발생할 수 있다.


  ### 변수의 표현
  #### e 표기법(과학 표기법)
  ex) *2.5e-3* = $2.5$X$10^3$

  #### *format short*
  소수점 4째 자리까지 보여준다.

  #### *format short g*
  format short 의 압축형식 (compact하게 보여준다)
  compact 하게 보여준다는 것은 과도한 0같은 값을 보여주지 않는다는 뜻 이다.

  #### *format short eng*
  format short 를 e 표기법을 이용하여 보여준다.

  #### *format long*
  소수점 15째 자리까지 보여준다.

  #### *format long g*
  format long 의 압축형식 (compact하게 보여준다)

  #### *format long eng*
  format long 을 e 표기법을 이용하여 보여준다.

  #### *format bank*
  (은행용) 소수점 2째 자리까지 보여준다.

  ### 변수의 선언

  #### 일반적 선언
  ![스크린샷 2016-12-14 오후 11.00.32](http://i.imgur.com/6P1TdFi.png)

  #### 대각행렬의 선언
  *diag(변수명)*

  ![스크린샷 2016-12-14 오후 11.35.26](http://i.imgur.com/nq5Mpbx.png)


  #### 자료형 지정 선언
  ![스크린샷 2016-12-14 오후 11.47.48 1](http://i.imgur.com/arcwStO.png)

  #### 구조체의 선언
  ![스크린샷 2016-12-14 오후 11.50.22](http://i.imgur.com/CsvxEhX.png)

  확인 $\downarrow$

  ![스크린샷 2016-12-14 오후 11.50.56](http://i.imgur.com/ZqwTHyu.png)

  #### 성분의 추가
  ![스크린샷 2016-12-14 오후 11.03.17](http://i.imgur.com/8hUr6Vj.png)

  #### : 의 사용
  ##### 간편한 행렬의 선언
  ![스크린샷 2016-12-14 오후 11.10.00](http://i.imgur.com/sDOAKiN.png)

  ![스크린샷 2016-12-14 오후 11.11.07](http://i.imgur.com/pMo8fwU.png)
  ##### 부분집합
  ![스크린샷 2016-12-14 오후 11.05.49](http://i.imgur.com/iqyU4fh.png)

  ![스크린샷 2016-12-14 오후 11.07.36](http://i.imgur.com/jAAmcXs.png)

  #### 모든 성분이 1인 행렬의 선언

  ![스크린샷 2016-12-17 오후 7.45.18](http://i.imgur.com/Ik2ASQl.png)

  #### 모든 성분이 0인 행렬의 선언

  ![스크린샷 2016-12-17 오후 7.45.42](http://i.imgur.com/eRTfOJq.png)

  #### 대각행렬의 선언

  ![스크린샷 2016-12-17 오후 7.46.01](http://i.imgur.com/zlMLKG3.png)

  ![스크린샷 2016-12-17 오후 7.46.26 1](http://i.imgur.com/CLgcTyg.png)

  #### *linspace(a,b,c)*
  a와 b 내에 균일한 간격의 점 c개로 구성된 벡터를 만든다

  ex)
  ![스크린샷 2016-12-14 오후 10.52.00](http://i.imgur.com/7w1HyuC.png)

  #### *meshgrid(x,y)*
  2차원과 3차원의 grid를 만든다.

  ![스크린샷 2016-12-14 오후 11.23.21](http://i.imgur.com/M2XDLJC.png)



 ## 행렬의 연산과 기능

  ### 연산자
  $a<b$ ----> *a<b*
  $a\le b$ ----> *a<=b*
  $a=b$ ----> *a==b*
  $a\neq b$ ----> *a~=b*


  ### 같은 위치성분의 곱
  변수 a, b 에 대해서
  _a. * b_

  ### 행렬곱
  변수 a, b 에 대해서
  _a * b_

  ### 행렬의 전치
  변수 a에 대해서
  *a '*

  ![스크린샷 2016-12-17 오후 7.14.51](http://i.imgur.com/hGL1xaa.png)

  ### 행렬을 좌우로 뒤집기
  *fliplr(변수명)*

  ![스크린샷 2016-12-14 오후 11.37.47](http://i.imgur.com/kID1N00.png)

  ### 행렬을 위아래로 뒤집기
  *flipud(a)*

  ![스크린샷 2016-12-14 오후 11.41.15](http://i.imgur.com/yK8vsNh.png)

  ### 행렬 성분의 합
  ![스크린샷 2016-12-17 오후 7.19.37](http://i.imgur.com/CbcPqSE.png)

  ### 행렬의 내적
  ![스크린샷 2016-12-17 오후 7.30.29](http://i.imgur.com/9AvEFVc.png)

  ### 행렬의 외적
  ![스크린샷 2016-12-17 오후 7.36.53](http://i.imgur.com/i1axIoE.png)

  ### 역행렬
  ![스크린샷 2016-12-17 오후 7.33.27](http://i.imgur.com/LiJw93d.png)

  ### Determinant 구하기
  ![스크린샷 2016-12-17 오후 7.35.07](http://i.imgur.com/ns5zMZX.png)

  ### 행렬의 나눗셈
  $Ax=B$일때 $x$를 구할 때 사용한다.
  ![스크린샷 2016-12-17 오후 7.40.30](http://i.imgur.com/wuVqnH8.png)

  ![스크린샷 2016-12-17 오후 7.41.33](http://i.imgur.com/a6O6bbp.png)

  ### 제곱근
  ![스크린샷 2016-12-15 오전 5.32.39](http://i.imgur.com/kN1Vkig.png)

  ### 절댓값
  ![스크린샷 2016-12-15 오전 5.33.26](http://i.imgur.com/tMsPZmF.png)

  ### 부호 확인

  양수일 때 1이 반환되고, 음수일 때 -1이 반환된다.

  ![스크린샷 2016-12-15 오전 5.34.25](http://i.imgur.com/TZwtQau.png)

  ### 나머지 연산
  ![스크린샷 2016-12-15 오전 5.36.40](http://i.imgur.com/H7wnh5C.png)

  ### 몫 연산
  버림 *fix* 를 이용한 연산
  ![스크린샷 2016-12-15 오전 5.37.35](http://i.imgur.com/gF0Vq1v.png)

  ### $e$의 지수승의 연산
  ![스크린샷 2016-12-15 오전 5.41.43](http://i.imgur.com/isRZrcr.png)

  ### $log$ 연산
  $ln(x)$ 과 $log_{10}(x)$의 계산

  ![스크린샷 2016-12-15 오전 5.43.14](http://i.imgur.com/3EZNTgb.png)

  ### 올림, 반올림, 버림 연산
  올림
  ![스크린샷 2016-12-15 오전 5.48.09](http://i.imgur.com/Np0DIYC.png)
  반올림
  ![스크린샷 2016-12-15 오전 5.48.19](http://i.imgur.com/HDpcwea.png)
  내림
  ![스크린샷 2016-12-15 오전 5.48.31](http://i.imgur.com/GQVWQVF.png)

  ### 소인수 분해
  ![스크린샷 2016-12-15 오전 5.50.26](http://i.imgur.com/Dd7lt73.png)

  ### 최대공약수
  ![스크린샷 2016-12-15 오전 5.50.48](http://i.imgur.com/BLA00uC.png)

  ### 최소공배수
  ![스크린샷 2016-12-15 오전 5.52.09](http://i.imgur.com/SxwrD4T.png)

  ### !(펙토리얼)
  ![스크린샷 2016-12-15 오전 5.53.55](http://i.imgur.com/aVvRgBY.png)

  ### C(조합)
  ![스크린샷 2016-12-15 오전 5.54.56](http://i.imgur.com/hQdRfgc.png)

  ### 소수 판별
  ![스크린샷 2016-12-15 오전 5.55.47](http://i.imgur.com/ZhQ5lAC.png)

   ### 삼각함수
   라디안값
   ![스크린샷 2016-12-15 오전 5.57.28](http://i.imgur.com/X3qCBjP.png)

   각도(degree)
   ![스크린샷 2016-12-15 오전 5.58.07](http://i.imgur.com/GHHS5oi.png)

   ### 최댓값 찾기
   하나의 행일경우
   ![스크린샷 2016-12-15 오전 6.01.23](http://i.imgur.com/HL5RgbO.png)
   여러 행일경우
   ![스크린샷 2016-12-15 오전 6.02.10](http://i.imgur.com/HqAP2Yv.png)
   파라미터가 2개일 경우
   ![스크린샷 2016-12-15 오전 6.04.21](http://i.imgur.com/X5uZsFt.png)
   b 에는 각 최댓값의 index값이 들어간다.

   ### 중간값 찾기

   #### 평균
   ![스크린샷 2016-12-15 오전 6.17.18](http://i.imgur.com/LXnclA8.png)
   #### 중간값의 평균
   ![스크린샷 2016-12-15 오전 6.18.36](http://i.imgur.com/vuIfTgs.png)

   ### 누적곱
   ![스크린샷 2016-12-15 오전 6.20.22](http://i.imgur.com/2tBD6ss.png)

   ### size 구하기

   ![스크린샷 2016-12-16 오후 10.34.13](http://i.imgur.com/Icx2Bp5.png)

   ### numel(x)
   몇개의 원소로 구성되어 있는지 확인 (num element의 약자)

   ![스크린샷 2016-12-16 오후 10.36.09](http://i.imgur.com/UwHEBYg.png)

   ### 표준편차
   여러행 일 때 : 같은 열끼리의 표준편차를 구해준다.

   ![스크린샷 2016-12-16 오후 10.37.51](http://i.imgur.com/KGF8Jzu.png)

   ### 분산
   여러행 일 때 : 같은 열끼리 분산을 구해준다.
   ![스크린샷 2016-12-16 오후 10.38.56](http://i.imgur.com/VDyedBd.png)

   ### 랜덤 수 생성
   #### rand(n)
   n X n 행렬의 랜덤한 성분을 가진 행렬을 선언한다.
   ![스크린샷 2016-12-16 오후 10.43.08](http://i.imgur.com/g0ePSj9.png)
   #### rand(n,m)
   n X m 행렬의 랜덤한 성분을 가진 행렬을 선언한다.
   ![스크린샷 2016-12-16 오후 10.43.30](http://i.imgur.com/IDhIrRz.png)
   #### randn(n)
   n X n 행렬의 정규분포의 모습으로 랜덤한 행렬을 선언한다.
   ![스크린샷 2016-12-16 오후 10.44.02](http://i.imgur.com/pGWpeGd.png)

   ### 각도
   사용법
   * 변수의 정의 : x = n + m*i
   * 함수의 사용 : angle(x)
   * 출력 : 라디안 값을 출력한다.
   ![스크린샷 2016-12-17 오후 2.13.27](http://i.imgur.com/qEbdnBf.png)

   ### 실수와 허수
   #### 실수와 허수 합치기
   ![스크린샷 2016-12-17 오후 2.15.59](http://i.imgur.com/FBijD2Y.png)
   #### 복소수 중 실수를 꺼내기
   ![스크린샷 2016-12-17 오후 2.16.40](http://i.imgur.com/uTolWEP.png)

   #### 복소수중 허수를 꺼내기
   ![스크린샷 2016-12-17 오후 2.17.37](http://i.imgur.com/IBOufCI.png)

   ### 분자와 분모를 분리
   ![스크린샷 2016-12-17 오후 3.01.50](http://i.imgur.com/OkWWkqs.png)

   ### 계산을 못 할 때
   ![스크린샷 2016-12-17 오후 2.25.20](http://i.imgur.com/2grhuYT.png)



   ###



   ## 출력

  ### *disp('출력 내용')*

  ### *fprintf('출력내용 %d ', 변수)*
  %d 위치에 있는게 무었이냐에 따라 변수와 1대 1 대응되어 출력된다.

  * %d : 정수
  * %c : 문자
  * %s : 문자열
  * %f : 실수
  * %e : 지수형식

  >%숫자 : 숫자만큼 공간을 확보한 후 출력한다.
   %.숫자 : 숫자만큼의 소숫점만 표시해준다.

  ![스크린샷 2016-12-15 오전 1.40.31](http://i.imgur.com/5232QFm.png)

 ## 조건문
  ### if else문
  > 코드
  ```Matlab
  if 조건
  ...
  elseif 조건
  ...
  end
  ```
  ![스크린샷 2016-12-15 오전 12.09.17](http://i.imgur.com/z1zWuWY.png)

  ### switch문
  > 코드
  ```Matlab
  switch 변수명
  case '1'
  ...
  case '2'
  ...
  case '3'
  ...
  otherwise
  ...
  end
  ```
  ![스크린샷 2016-12-15 오전 12.21.13](http://i.imgur.com/E1q4yQO.png)

 ## 반복문

 ### for문

 지정된 횟수(변수의 열의 갯수만큼)를 반복한다.
 루프안에서 index의 값을 변경해도 적용되지않는다
 만약 프로그래밍 방식으로 루프를 종료하려면 break 문을 사용해야한다

  > 코드
 ```Matlab
 for 변수
 ...
 end
 ```

 ![스크린샷 2016-12-15 오전 12.59.36](http://i.imgur.com/nPYsJxQ.png)

 ### while문

 조건이 true이면 반복한다.
 (표현식이 false가 될 때까지 명령문 반복)

 > 코드
```Matlab
while (표현식)
...
end
```

![스크린샷 2016-12-15 오전 1.05.49](http://i.imgur.com/JZ7ta4U.png)

 ## 함수

 입력 x1,...,xM을 받고 출력 y1,...,yN을 반환하는 myfun이라는 함수를 선언
 .m 파일로 저장

 ```Matlab
 function [y1,...,yN] = myfun(x1,...,xM)
 ...
 end
 ```
 ### 함수의 선언
 ![스크린샷 2016-12-15 오전 1.24.47](http://i.imgur.com/96pXHpr.png)
 ### 함수의 사용
 ![스크린샷 2016-12-15 오전 1.25.25](http://i.imgur.com/72VdG0q.png)

 ## OpenGL

 ### *plot(x,y)*
 #### 연결
 ![스크린샷 2016-12-15 오전 2.17.34](http://i.imgur.com/Pw1aIQb.png)
 ![스크린샷 2016-12-15 오전 2.18.43](http://i.imgur.com/gB1qSe3.png)
 ![스크린샷 2016-12-15 오전 2.18.01](http://i.imgur.com/2lozNb4.png)
 #### 성분(점)
 ![스크린샷 2016-12-15 오전 2.51.13](http://i.imgur.com/iIPHcsa.png)
 ![스크린샷 2016-12-15 오전 2.50.56](http://i.imgur.com/72u0OEQ.png)
 #### 성분(다이아)
 ![스크린샷 2016-12-15 오전 2.51.51](http://i.imgur.com/SnTn5Jr.png)
 ![스크린샷 2016-12-15 오전 2.52.05](http://i.imgur.com/D3xPRLx.png)
 #### 그래프 겹치게 그리기
 $f(x)=y$ 와 $f(y) =x$를 한 figure에 그렸다
 ![스크린샷 2016-12-15 오전 3.14.22](http://i.imgur.com/10luMTa.png)
 ![스크린샷 2016-12-15 오전 3.14.29](http://i.imgur.com/UqEgHuA.png)

 #### 좌표평면 안에 글자 넣기
 ![스크린샷 2016-12-15 오전 3.18.49](http://i.imgur.com/LLGv8Y0.png)
 ![스크린샷 2016-12-15 오전 3.18.55](http://i.imgur.com/1T030vg.png)

 #### 범례설정
 ![스크린샷 2016-12-15 오전 3.20.40](http://i.imgur.com/j9vKlOW.png)
 ![스크린샷 2016-12-15 오전 3.20.29](http://i.imgur.com/Opc0cNg.png)

 #### *plotyy(x,y1,x,y2)*
 두개의 y축을 이용하여 그래프를 표현한다.
 ![스크린샷 2016-12-15 오전 4.32.22](http://i.imgur.com/uts3j7x.png)
 ![스크린샷 2016-12-15 오전 4.32.32](http://i.imgur.com/t8QN8Ak.png)

 #### *comet(x,y,z)*
 혜성모양 plot (애니메이션 효과가 있다)

 ![스크린샷 2016-12-15 오전 4.37.56](http://i.imgur.com/eO3iUPj.png)
 ![스크린샷 2016-12-15 오전 4.38.05](http://i.imgur.com/DoZHphm.png)

 #### *mesh(x)*
 ![스크린샷 2016-12-15 오전 4.41.28](http://i.imgur.com/mWe077e.png)
 ![스크린샷 2016-12-15 오전 4.42.46](http://i.imgur.com/rATia1y.png)

 ![스크린샷 2016-12-15 오전 5.10.10](http://i.imgur.com/zP7VZeD.png)
 ![스크린샷 2016-12-15 오전 5.10.27](http://i.imgur.com/ufxYvRB.png)
 ![스크린샷 2016-12-15 오전 5.10.37](http://i.imgur.com/V2SKDjU.png)


 #### *surf(x)*
 ![스크린샷 2016-12-15 오전 4.45.02](http://i.imgur.com/rzwlu1e.png)
 ![스크린샷 2016-12-15 오전 4.45.10](http://i.imgur.com/0TXEk1u.png)

 #### *contour(x)*
 ![스크린샷 2016-12-15 오전 5.28.47](http://i.imgur.com/k8PSEXz.png)
 ![스크린샷 2016-12-15 오전 5.29.02](http://i.imgur.com/X3AElyZ.png)

 #### *sphere* (구)
 ![스크린샷 2016-12-15 오전 5.31.09](http://i.imgur.com/MlOxZEm.png)
 ![스크린샷 2016-12-15 오전 5.31.05](http://i.imgur.com/B13DpE7.png)

 ### 기본 사용법

 #### 제목 설정
 title('제목')

 ![스크린샷 2016-12-15 오전 2.20.51](http://i.imgur.com/DaSgNit.png)
 ![스크린샷 2016-12-15 오전 2.20.42](http://i.imgur.com/ksI0JlF.png)

 ![스크린샷 2016-12-15 오전 3.27.15](http://i.imgur.com/XmdZc2d.png)
 ![스크린샷 2016-12-15 오전 3.27.20](http://i.imgur.com/sWkNHWE.png)

 #### 축 이름 설정
 xlabel('x') -> x축 이름 설정
 ylabel('y') -> y축 이름 설정

 ![스크린샷 2016-12-15 오전 2.24.22](http://i.imgur.com/LAAIOSU.png)
 ![스크린샷 2016-12-15 오전 2.24.06](http://i.imgur.com/ei5LC4m.png)

 #### 격자 설정
 grid on
 ![스크린샷 2016-12-15 오전 2.25.30](http://i.imgur.com/dRG5wXu.png)
 ![스크린샷 2016-12-15 오전 2.25.37](http://i.imgur.com/Tl7t5yL.png)

 grid off
 ![스크린샷 2016-12-15 오전 2.26.21](http://i.imgur.com/p8FFYyH.png)
 ![스크린샷 2016-12-15 오전 2.24.06](http://i.imgur.com/VaNF5Tu.png)

 #### 화면 분할
 subplot(행,열,번째)

 ![스크린샷 2016-12-15 오전 2.41.27](http://i.imgur.com/7tdeqWP.png)
 ![스크린샷 2016-12-15 오전 2.41.37](http://i.imgur.com/HqI4QJj.png)

 ### *peaks(n)*
  $n$ X $n$ 행의 예제함수를 만든다.

 ![스크린샷 2016-12-15 오전 2.47.28](http://i.imgur.com/a3FvjfX.png)
 ![스크린샷 2016-12-15 오전 2.47.38](http://i.imgur.com/Ry8AQkW.png)

 ### 다양한 그래프
 #### *polar(x,y)*
 ![스크린샷 2016-12-15 오전 3.36.41](http://i.imgur.com/jpnL5qC.png)
 ![스크린샷 2016-12-15 오전 3.36.59](http://i.imgur.com/jkuipRA.png)

 #### log 그래프
 ![스크린샷 2016-12-15 오전 3.46.17 1](http://i.imgur.com/AfjZzQp.png)
 ![스크린샷 2016-12-15 오전 3.46.30](http://i.imgur.com/LC13mxc.png)

 #### bar 그래프
 ![스크린샷 2016-12-15 오전 3.55.12](http://i.imgur.com/DiXlper.png)
 ![스크린샷 2016-12-15 오전 3.54.35](http://i.imgur.com/4mNf9Pj.png)

 #### pie 그래프
 ![스크린샷 2016-12-15 오전 4.07.43](http://i.imgur.com/D67Lalr.png)
 ![스크린샷 2016-12-15 오전 4.07.55](http://i.imgur.com/h4ENJeq.png)

 #### histogram
 ![스크린샷 2016-12-15 오전 4.12.52](http://i.imgur.com/Rbckrce.png)
 ![스크린샷 2016-12-15 오전 4.13.00](http://i.imgur.com/kZUDivd.png)
 $\downarrow$ 내가 원하는 갯수로 분할
 ![스크린샷 2016-12-15 오전 4.13.27](http://i.imgur.com/YyN5WMN.png)
 ![스크린샷 2016-12-15 오전 4.13.21](http://i.imgur.com/Vn4quqh.png)

 ## 일반적인 사용법

 ### 수식의 사용

 #### sym
 기능 : 식으로 표현한다.
 ![스크린샷 2016-12-17 오후 2.55.31](http://i.imgur.com/nux3o6x.png)
 ![스크린샷 2016-12-17 오후 2.55.43](http://i.imgur.com/B8njaKG.png)

 #### syms
 기능 : 방정식 연산 이전에 이것이 문자임을 선언한다.
 ![스크린샷 2016-12-17 오후 2.58.17](http://i.imgur.com/2Zm9yCP.png)
![스크린샷 2016-12-17 오후 2.58.24](http://i.imgur.com/T4gub1e.png)

 #### 수식의 전개
 ![스크린샷 2016-12-17 오후 2.59.18](http://i.imgur.com/trNkXBW.png)

 #### 수식의 인수분해
 ![스크린샷 2016-12-17 오후 3.04.21](http://i.imgur.com/ZLUDEqB.png)

 #### 수식의 미분 (요소간 차분)

 ##### 수식이 들어갈 경우

 ###### *diff(수식)*
  수식을 미분한다.

 ![스크린샷 2016-12-17 오후 4.45.07](http://i.imgur.com/hUSJWVU.png)
 ![스크린샷 2016-12-17 오후 4.45.10](http://i.imgur.com/wd9Cyjz.png)

 ###### *diff(수식,n)*
 수식을 n번 미분한다.
 ![스크린샷 2016-12-17 오후 4.56.39](http://i.imgur.com/Kueh11I.png)
 ![스크린샷 2016-12-17 오후 4.56.49](http://i.imgur.com/KiOBYLK.png)

 ###### *diff(수식, '변수')*
 수식을 변수에 관하여 미분한다.
 ![스크린샷 2016-12-17 오후 4.56.39](http://i.imgur.com/19qzYxr.png)
 ![스크린샷 2016-12-17 오후 4.59.09](http://i.imgur.com/vkxhX6n.png)

 ##### 행렬이 들어갈 경우
 두 값의 차이를 행렬로 만들어준다.

 ![스크린샷 2016-12-17 오후 4.47.36](http://i.imgur.com/KzjiOYk.png)

 #### 수식의 적분

 ##### int(수식)
 수식에 관햐여 적분
 ![스크린샷 2016-12-17 오후 4.56.39](http://i.imgur.com/j0QZ5qM.png)

 ![스크린샷 2016-12-17 오후 5.01.14](http://i.imgur.com/vQECvzp.png)

 ##### *int(수식, '변수')*
 수식을 변수에 관햐여 적분
 ![스크린샷 2016-12-17 오후 5.24.16](http://i.imgur.com/aQanJyJ.png)

 ##### *int(수식, n, m)*
 수식을 n부터 m까지 정적분
 ![스크린샷 2016-12-17 오후 5.24.56](http://i.imgur.com/2Awr5ka.png)

 ##### *int(수식, '변수', n, m)*
 수식을 변수에 관하여 n부터 m까지 정적분
 ![스크린샷 2016-12-17 오후 5.25.20](http://i.imgur.com/ZPVKaGw.png)

 ##### *int(수식, '변수','n','m')*
 수식을 변수에 관하여 수식n부터 수식m까지 정적분
 ![스크린샷 2016-12-17 오후 5.25.43](http://i.imgur.com/VvW8VES.png)

 #### 해 구하기
 정수의 계산은 수식으로, 부동소수점의 계산은 부동소수로 계산한다.
 ![스크린샷 2016-12-17 오후 3.29.59](http://i.imgur.com/oxLtxYu.png)

 #### 상미분 방정식의 해 구하기

 식에 조건을 만족하는 x와 y를 구한다.
 ![스크린샷 2016-12-17 오후 6.58.56](http://i.imgur.com/oBFnYTC.png)

 ![스크린샷 2016-12-17 오후 7.11.46](http://i.imgur.com/836by45.png)

 ### 편리한 그래프의 사용
 #### ezplot
 ![스크린샷 2016-12-17 오후 4.19.07](http://i.imgur.com/QT8zZME.png)
 ![스크린샷 2016-12-17 오후 4.19.18](http://i.imgur.com/XQByicO.png)

 ![스크린샷 2016-12-17 오후 4.21.01](http://i.imgur.com/ZLc08CL.png)
 ![스크린샷 2016-12-17 오후 4.21.11](http://i.imgur.com/OWXOrOe.png)

 ![스크린샷 2016-12-17 오후 4.22.34](http://i.imgur.com/3sd0gQ0.png)
 ![스크린샷 2016-12-17 오후 4.22.41](http://i.imgur.com/CNFdjfo.png)

 #### ezcontour,ezcontourf,ezpolar
 ![스크린샷 2016-12-17 오후 4.37.01](http://i.imgur.com/DiHPlWI.png)
 ![스크린샷 2016-12-17 오후 4.37.19](http://i.imgur.com/3R9jGlI.png)

 ![스크린샷 2016-12-17 오후 4.36.53](http://i.imgur.com/AzexRPt.png)

 #### ezmesh, ezmeshc, ezsurf, ezsurfc
 ![스크린샷 2016-12-17 오후 4.41.14](http://i.imgur.com/JnqKXWb.png)
 ![스크린샷 2016-12-17 오후 4.41.21](http://i.imgur.com/h3JGVze.png)

 ![스크린샷 2016-12-17 오후 4.41.27](http://i.imgur.com/3LDq8bS.png)

 ### interpolation

 interpolation : 어떤 성분이 있을때 그 사이의 성분을 추측하여 보간하는 것.

 어떤 성분들
 ![스크린샷 2016-12-17 오후 7.59.06](http://i.imgur.com/Gh6uxSv.png)
 ![스크린샷 2016-12-17 오후 7.58.50](http://i.imgur.com/6Or77md.png)

 #### linear interpolation
 기본 옵션은 linear interpolation 이다

 ![스크린샷 2016-12-17 오후 8.04.54](http://i.imgur.com/NUe4YD8.png)

 ![스크린샷 2016-12-17 오후 8.05.07](http://i.imgur.com/zw3ZJ6u.png)

 #### spline interpolation
 ![스크린샷 2016-12-17 오후 8.09.01](http://i.imgur.com/H5k7tbM.png)

 ![스크린샷 2016-12-17 오후 8.11.07](http://i.imgur.com/qmL6K8o.png)

 #### nearest inerpoltaion
 ![스크린샷 2016-12-17 오후 8.14.37](http://i.imgur.com/DplMXGp.png)

 ![스크린샷 2016-12-17 오후 8.14.44](http://i.imgur.com/CwwQdZ9.png)

 #### Polynomial curve fitting (다항식 곡선 피팅)
 ##### *polyfit(x,y,차수)*
 해당 성분에 대한 최적의 다항식을 도출하고
 다항식$P(x)$의 계수를 반환한다.
 ![스크린샷 2016-12-17 오후 9.20.44](http://i.imgur.com/38N2Lxr.png)

 ##### *polyval(다항식의 계수,x값들)*
 >다항식 $p(x)=3x^2+2x+1$은 다음을 사용하여 $x = 5, 7, 9$에 대해계산되며
 ![스크린샷 2016-12-17 오후 9.11.26](http://i.imgur.com/1uoX2S8.png)
 다음과 같은 결과를 반환한다.

 즉 polyval의 반환값은 다항식에 따라 x의 값들을 넣어 계산된 y값 들이다.

 따라서 이렇게 새로 나온 성분들을 이어 그래프에 나타내면
 ![스크린샷 2016-12-17 오후 9.22.57](http://i.imgur.com/PBVzb8m.png)
 ![스크린샷 2016-12-17 오후 9.25.27](http://i.imgur.com/1xam1WB.png)

 이런 식으로 나타낼 수 있다.
