import macros_cg;
unitsize(2cm);

defaultpen(fontsize(20pt));
draw(xscale(13)*unitsquare);
string[] bits={"", "", "", "", "", "1", "0", "1"}, bitsneg = {"0", "1", "1", "", "", "", ""}, v = {"$0,5$", "$0,25$", "$0,125$", "$0,0625$", "$\dots$"};

for(int k=0;k<8;++k){
	draw((k,0)--(k,1));
	label(format("%i",2^(7-k)), (k+0.5, 1.5), fontsize(18pt));
	label(format("$2^%i$",7-k), (k+0.5, 2.5));
	label(bits[k], (k+0.5, 0.5));
}

for(int k=0;k<5;++k){
	draw((k+8,0)--(k+8,1));
	label(v[k], (k+8.5, 1.5), fontsize(18pt));
	label(format("$2^{-%i}$",k+1), (k+8.5, 2.5));
	label(bitsneg[k], (k+8.5, 0.5));
}


label("puissances de 2 :", (-0.1,2),W);
label("bits :", (-0.1,.5),W);
draw((0.1,1.2)--(0,1.2)--(0,2.8)--(0.1,2.8)^^(0,2)--(-0.1,2));

draw((8,-0.2)--(8,2.7), 1.2bp+red);
shipout(bbox(3mm,invisible));

