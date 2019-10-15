var W >=0;
var P >=0;

maximize Profit: 130*W+100*P;
subject to Steel: 1.5*W + P <= 27;
subject to Molding: W + P <= 21;
subject to Assembly: 0.3*W +0.5*P <= 9;
subject to WDemand: W <= 15;
subject to PDemand: P <= 16;