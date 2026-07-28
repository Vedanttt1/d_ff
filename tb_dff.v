`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module tb_dff;
reg d,clk;
wire q;
d_ff DUT(
.d(d),
.clk(clk),
.q(q)
);
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial begin
d=0;
#8
d=1;
#18
$finish;
end

endmodule
