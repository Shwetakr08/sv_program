//Write a code to print all prime number with in 1000, we can give any range here?

class  prime_num;
	parameter RANGE = 1000;

	rand int unsigned prime[$];
	constraint const_prime { prime.size  inside {RANGE};
					foreach(prime[i])
						if(i > 1 && (i%2 == 0 && i != 2) || (i%3 == 0 && i!= 3) || (i%4 == 0 && i != 4) ||  (i%5 == 0 && i != 5) ||  (i%6 == 0 && i != 6) ||  (i%7 == 0 && i != 7) ||  (i%8 == 0 && i != 8) ||  (i%9 == 0 && i != 9))
							prime[i] == i;
						else
							prime[i] == 2;
					}

					function void post_randomize;
						prime = prime.unique();
					endfunction

endclass

module top;
  prime_num  num;
  initial begin
	  num = new();
	  assert(num.randomize());
	  $display("=====================================");
	  $display("the prime number: %p ", num.prime);
	  $display("=====================================");
  end
endmodule
