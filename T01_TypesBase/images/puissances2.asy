import macros_cg;
unitsize(1.5cm);

defaultpen(fontsize(20pt));
draw(xscale(8)*unitsquare);
string[] bits={"1", "0", "1", "1", "0", "1", "0", "1"};

for(int k=0;k<8;++k){
	draw((k,0)--(k,1));
	label(format("%i",2^(7-k)), (k+0.5, 1.5));
	label(format("$2^%i$",7-k), (k+0.5, 2.5));
	label(bits[k], (k+0.5, 0.5));
}

label("puissances de 2 :", (-0.1,2),W);
label("bits :", (-0.1,.5),W);
draw((0.1,1.2)--(0,1.2)--(0,2.8)--(0.1,2.8)^^(0,2)--(-0.1,2));
shipout(bbox(3mm,invisible));

