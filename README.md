# VLSI_Project
4 bit CLA Adder
- Designing 4-bit Carry look ahead adder. And we need to consider Lamda=0.09 micro-meter, Wp=1.8 micro-meter and Wn=0.9 micro-meter.
- If the numbers to be added are a4a3a2a1 and b4b3b2b1, then the propagate and generate signals for each bit position can be defined as Pi=Ai ⊕Bi and Gi=Ai.Bi
P1=A1⊕ B1, G1=A1.B1
P2=A2⊕ B2, G2=A2.B2
P3=A3⊕ B3, G3=A3.B3
P4=A4⊕ B4, G4=A4.B4
- By using this information, I designed the post layout in magic.
