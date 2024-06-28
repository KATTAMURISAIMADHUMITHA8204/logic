module gates (a, b, AND, NAND, OR , NOR, XNOR, XOR); //and, nand, or, nor, xnor, xor

input a, b;
output AND, NAND, OR , NOR, XNOR, XOR;

wire a, b, c, d, e, f, g, h, i, j, k, l;

and (AND,a,b);
nand (NAND,a,b);
or (OR,a,b);
nor (NOR,a,b);
xnor (XNOR,a,b);
xor (XOR,a,b);

endmodule  