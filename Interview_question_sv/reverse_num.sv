//Write a program to print a number given by user but digits reversed. e.g:
//input :123   output : 321

module q4;

 initial begin
	 static bit [11:0] value_a = 12'h123;
	 static bit [11:0] value_b = {<<4{value_a}};

	 $display(" value_b = %h", value_b);

 end

 initial begin
	 static bit [19:0] value_c = 20'h12345;
	 static bit [19:0] value_d = {<<4{value_c}};

	 $display(" value_d = %h", value_d);
 end
 endmodule
