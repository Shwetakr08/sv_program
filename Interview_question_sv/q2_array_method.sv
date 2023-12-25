//Code for array ordering methods - reverse, sort, rsort,shuffle.

module arr_ordering;

  int a[9] = '{5,6,2,4,3,1,8,9,7};

  initial begin
	  a.reverse();
	  $display("reverse : %p",a);

	  a.sort();
	  $display("sort : %p",a);

	  a.rsort();
	  $display("rsort : %p",a);

	  a.shuffle();
	  $display("shuffle : %p",a);

  end

  endmodule
