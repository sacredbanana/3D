'3D by Cameron Armstrong
open window 640,512
window origin "lb"
x=320
y=256
p1x=-100
p1y=-100
p1z=1
p2x=100
p2y=100
p2z=1
p3x=0
p3y=150
p3z=2
label a
setdrawbuf dw
clear window
setrgb 1,0,255,0
line x+p1x/p1z^2,y+p1y/p1z^2 to x+p2x/p2z^2,y+p2y/p2z^2
line x+p2x/p2z^2,y+p2y/p2z^2 to x+p3x/p3z^2,y+p3y/p3z^2
line x+p3x/p3z^2,y+p3y/p3z^2 to x+p1x/p1z^2,y+p1y/p1z^2
p1z=p1z-.001
p2z=p2z-.001
p3z=p3z-.001
setdispbuf dw
dw=1-dw
goto a
