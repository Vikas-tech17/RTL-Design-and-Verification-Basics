module bcdcmb(y,a,b,c,d,e,f,g);
input  [15:0]y;
output a,b,c,d,e,f,g;

nor m0(a, y[0], y[2], y[3], y[5], y[6], y[7], y[8], y[9]);
nor m1(b, y[0], y[1], y[2], y[3], y[4], y[7], y[8], y[9]);
nor m2(c, y[0], y[1], y[3], y[4], y[5], y[6], y[7], y[8], y[9]);
nor m3(d, y[0], y[2], y[3], y[5], y[6], y[8], y[9]);
nor m4(e, y[0], y[2], y[6], y[8]);
nor m5(f, y[0], y[4], y[5], y[6], y[8], y[9]);
nor m6(g, y[2], y[3], y[4], y[5], y[6], y[8], y[9]);
endmodule