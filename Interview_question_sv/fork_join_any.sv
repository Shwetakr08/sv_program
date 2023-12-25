//code for fork join using loop
//fork_join any

module fork_join;
  reg [7:0] mem [7:0];
  logic [7:0] data_in, data_out;
  logic       read, write;
  logic [2:0] rd_addr,wr_addr;

  task start;
	  fork
	  begin
	  //fork
	    begin //process 1
		for(int i=0; i<1; i++)begin
			writing();
		end
            end

	    begin //process 2
	        for(int j=0; j<1; j++)begin
			reading();
		end
	  end
         end
//	join_any // Procvess 1 and process 2 start at same time
        
    join_any
endtask

task writing;
	if(write)
		mem[wr_addr] = data_in;
endtask

task reading;
	if(read)
		data_out = mem[rd_addr];
endtask

initial begin
	{write,read} = 2'b11;
	rd_addr = 5;
	wr_addr = 5;
	data_in = 50;
	start;

end

initial begin
	$display("===============================================================================================================");
	$monitor("wr_addr = %0d		rd_addr =%0d	data_in = %0d	data_out = %0d", wr_addr, rd_addr, data_in, data_out);
end
endmodule
