//2.Code for queue buid in methods size, insert, (n/2 postion, n postion, n-1 postion, n/n postion), delete, pop_front, pop_back, push_front and push_back.

module queue();

integer a[$] ={4,2,3};
int  b[$]={8,5,6,7};
int j=4;
int pop_a, pop_b;

initial begin
	a.insert((4/2),j);
	$display(a);

	a.insert(4,j);
	$display(a);

	a.insert((j-1),10);
	$display(a);

	a.delete();
	$display(a);

	a.push_front(5);
	$display(a);

	a.push_back(20);
	$display(a);

	pop_a = a.pop_front();
	$display(pop_a);

	pop_b = b.pop_back();
	$display(b);
	$display(pop_b);

end
endmodule
