var xA{1..4} >=0;
var xC{1..4} >=0; 
var yA{1..5} >=0;

minimize Obj: sum{t in 1..4} (35*xA[t] + 50*xC[t] + 5*yA[t+1]);
subject to Dyn1: yA[2]=yA[1]+xA[1]+xC[1]-150;
subject to Dyn2: yA[3]=yA[2]+xA[2]+xC[2]-160;
subject to Dyn3: yA[4]=yA[3]+xA[3]+xC[3]-225;
subject to Dyn4: yA[5]=yA[4]+xA[4]+xC[4]-180;
subject to InitialY: yA[1]=0;
subject to Capa{t in 1..4}: xA[t]<=160;