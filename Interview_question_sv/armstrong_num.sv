//write all armstrong numbers between 100 to 500

module armstrong;

  int num,a,rem;
  int count = 100;

  initial begin
	  while(count <= 500)
  		begin
			num = count;
			a = 0;

			while(num)//iterating the number
				begin
					rem = num%10;
					a = a+(rem * rem * rem);
					num = num/10;
				end
				if(count == a)
				begin
					$display("%d is armstrong num", count);
				end

				count++;
			end
		end
		endmodule
