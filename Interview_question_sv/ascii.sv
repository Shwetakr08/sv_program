//Print ASCII value and their equivalent characters. ASCII value from 0 to 255.

module ascii;
  int i;
  initial 
  	begin
	  for(i=0; i<=255; i++)
	  begin
		  $display("ASCII value of char %0c = %0d", i,i);
	  end
	end
endmodule
