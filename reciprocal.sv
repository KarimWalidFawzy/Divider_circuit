parameter ARG_BIT_WIDTH = 32;
parameter PRECISION=64;
module reciprocal(
    input [ARG_BIT_WIDTH-1:0] B,
    output [PRECISION-1:0] rec,
    output dvz);
    assign dvz = (B==0);
    reg [PRECISION-1:0] fp;
    wire [PRECISION-1:0][ARG_BIT_WIDTH:0] wiress;
    subandshft a_0(33'b01,B,wiress[0],fp[PRECISION-1]);
    subandshft a_1(wiress[0],B,wiress[1],fp[PRECISION-2]);
    subandshft a_2(wiress[1],B,wiress[2],fp[PRECISION-3]);
    subandshft a_3(wiress[2],B,wiress[3],fp[60]);
    subandshft a_4(wiress[3],B,wiress[4],fp[59]);
    subandshft a_5(wiress[4],B,wiress[5],fp[58]);
    subandshft a_6(wiress[5],B,wiress[6],fp[57]);
    subandshft a_7(wiress[6],B,wiress[7],fp[56]); /*Continue like this for PRECISION modules*/
    subandshft a_8(wiress[7],B,wiress[8],fp[55]);
    subandshft a_9(wiress[8],B,wiress[9],fp[54]);
    subandshft a_10(wiress[9],B,wiress[10],fp[53]);
    subandshft a_11(wiress[10],B,wiress[11],fp[52]);
    subandshft a_12(wiress[11],B,wiress[12],fp[51]);
    subandshft a_13(wiress[12],B,wiress[13],fp[50]);
    subandshft a_14(wiress[13],B,wiress[14],fp[49]);
    subandshft a_15(wiress[14],B,wiress[15],fp[48]);
    subandshft a_16(wiress[15],B,wiress[16],fp[47]);
    subandshft a_17(wiress[16],B,wiress[17],fp[46]);
    subandshft a_18(wiress[17],B,wiress[18],fp[45]);
    subandshft a_19(wiress[18],B,wiress[19],fp[44]);
    subandshft a_20(wiress[19],B,wiress[20],fp[43]);
    subandshft a_21(wiress[20],B,wiress[21],fp[42]);
    subandshft a_22(wiress[21],B,wiress[22],fp[41]);
    subandshft a_23(wiress[22],B,wiress[23],fp[40]);
    subandshft a_24(wiress[23],B,wiress[24],fp[39]);
    subandshft a_25(wiress[24],B,wiress[25],fp[38]);
    subandshft a_26(wiress[25],B,wiress[26],fp[37]);
    subandshft a_27(wiress[26],B,wiress[27],fp[36]);
    subandshft a_28(wiress[27],B,wiress[28],fp[35]);
    subandshft a_29(wiress[28],B,wiress[29],fp[34]);
    subandshft a_30(wiress[29],B,wiress[30],fp[33]);
    subandshft a_31(wiress[30],B,wiress[31],fp[32]);
    subandshft a_32(wiress[31],B,wiress[32],fp[31]);
    subandshft a_33(wiress[32],B,wiress[33],fp[30]);
    subandshft a_34(wiress[33],B,wiress[34],fp[29]);
    subandshft a_35(wiress[34],B,wiress[35],fp[28]);
    subandshft a_36(wiress[35],B,wiress[36],fp[27]);
    subandshft a_37(wiress[36],B,wiress[37],fp[26]);
    subandshft a_38(wiress[37],B,wiress[38],fp[25]);
    subandshft a_39(wiress[38],B,wiress[39],fp[24]);
    subandshft a_40(wiress[39],B,wiress[40],fp[23]);
    subandshft a_41(wiress[40],B,wiress[41],fp[22]);
    subandshft a_42(wiress[41],B,wiress[42],fp[21]);
    subandshft a_43(wiress[42],B,wiress[43],fp[20]);
    subandshft a_44(wiress[43],B,wiress[44],fp[19]);
    subandshft a_45(wiress[44],B,wiress[45],fp[18]);
    subandshft a_46(wiress[45],B,wiress[46],fp[17]);
    subandshft a_47(wiress[46],B,wiress[47],fp[16]);
    subandshft a_48(wiress[47],B,wiress[48],fp[15]);
    subandshft a_49(wiress[48],B,wiress[49],fp[14]);
    subandshft a_50(wiress[49],B,wiress[50],fp[13]);
    subandshft a_51(wiress[50],B,wiress[51],fp[12]);
    subandshft a_52(wiress[51],B,wiress[52],fp[11]);
    subandshft a_53(wiress[52],B,wiress[53],fp[10]);
    subandshft a_54(wiress[53],B,wiress[54],fp[9]);
    subandshft a_55(wiress[54],B,wiress[55],fp[8]);
    subandshft a_56(wiress[55],B,wiress[56],fp[7]);
    subandshft a_57(wiress[56],B,wiress[57],fp[6]);
    subandshft a_58(wiress[57],B,wiress[58],fp[5]);
    subandshft a_59(wiress[58],B,wiress[59],fp[4]);
    subandshft a_60(wiress[59],B,wiress[60],fp[3]);
    subandshft a_61(wiress[60],B,wiress[61],fp[2]);
    subandshft a_62(wiress[61],B,wiress[62],fp[1]);
    subandshft a_63(wiress[62],B,wiress[63],fp[0]);
    /*
    Generally:
    subandshift a_i(wiress[i-1],B,wiress[i],fp[PRECISION-1-i]);
    where i is the index from i = 0 -> PRECISION-1
    */
    assign rec = fp;
endmodule
