//code for fork join
//fork_join: Finishes when all child threads are over
//fork_join is completly blocking
//fork_join execute the statement in parallaly
//fork join used in verilog 

module thread;

 initial 
   begin
     #10  $display($time,"----> Last");
     fork
       begin
	 #1 $display($time, "-----> thread4");
       end

       begin
	 #8 $display($time,"-----> thread1");
	 #6 $display($time,"-----> thread");
       end

       begin
	 #5 $display($time, "---> thread2");
	 #10 $display($time, "----> thread3");
       end

       join
       $display($time, "-----> lt");
  end
endmodule
