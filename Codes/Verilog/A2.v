module Adder1(input A0,input A1,input A2,input A3,input B0,input B1,input B2,input B3,output C1,output C2,output C3,output C4,output S0,output S1,output S2,output S3);

wire G0,G1,G2,G3;
wire P0,P1,P2,P3;
wire C1,C2,C3,C4;

and Gate1(G0,A0,B0);
and Gate2(G1,A1,B1);
and Gate3(G2,A2,B2);
and Gate4(G3,A3,B3);
xor Gate5(P0,A0,B0);
xor Gate6(P1,A1,B1);
xor Gate7(P2,A2,B2);
xor Gate8(P3,A3,B3);
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16;
// C1=G0+P0C0
assign C1=G0;
// C2=G1+P1C1=G1+P1(G0+P0C0)
and Gate9(w1,P1,G0);
or Gate10(C2,w1,G1);
// C3=G2+P2C2=G2+P2[G1+P1(G0+P0C0)]
and Gate11(w2,P2,P1,G0);
and Gate12(w3,P2,G1);
or Gate13(C3,w2,w3,G2);
// C4=G3+P3C3=G3+P3[G2+P2[G1+P1(G0+P0C0)]]
and Gate14(w4,P3,P2,P1,G0);
and Gate15(w5,P3,P2,G1);
and Gate16(w6,P3,G2);
or Gate17(C4,w4,w5,w6,G3);
//S0=P0 XOR C0
xor Gate18(S0,P0,0);
//S1=P1 XOR C1
xor Gate19(S1,P1,C1);
//S2=P2 XOR C2
xor Gate20(S2,P2,C2);
//S3=P3 XOR C3
xor Gate21(S3,P3,C3);


endmodule





