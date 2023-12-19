//Daynamic Array
//Application of dynamic arrays
//1) dynamic array can be use where we need variable size memory
//2) it cannot be used when the memory is sparse

module top;

bit [7:0] data[], data1[];

initial begin

//	$display("size of data: %d", data.size());

	data = new[10]; //allocation of memory

//	$display("size of data: %d", data_size());

	//Add data to the array
	for(int i=0; i<data.size(); i++)begin
		data[i] = $urandom();
	end
	
	//print data from it
	for(int i=0; i<data.size(); i++)begin
		$display("Data : %h", data[i]);
	end

	//how to deallocate
	data.delete();

	$display("size of data : %d", data.size());

	data = new[8];
	data1 = new[10];

	//add data to dynamic arrays
	for(int i=0; i< data.size(); i++)begin
		data[i] = $urandom();
	end

	//add data to 2nd dynamic array
	for(int i=0; i<data.size(); i++)begin
		data1[i] = data[i];
	end

end

	

endmodule
