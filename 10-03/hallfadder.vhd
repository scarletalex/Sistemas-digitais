-- MAria Fernanda 10/03

entity hallfadder is
port(a, b: in bit;
		p,g: out bit);
end hallfadder;

architecture half of hallfadder is
begin
g<= a and b;
p<= a xor b;

end half;
