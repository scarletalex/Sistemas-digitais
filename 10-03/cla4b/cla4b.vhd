-- Maria fernanda 10-03

entity cla4b is
port( a,b: in bit_vector(3 downto 0);
		s: out bit_vector(3 downto 0);
		cin: in bit;
		cout: out bit);
end cla4b;

architecture cla of cla4b is

component hallfadder is
port(a, b: in bit;
		p,g: out bit);
end component;

component clamod is
port(p, g: in bit_vector(3 downto 0);
		c: out bit_vector(4 downto 0);
		cin: in bit);
end component;

signal c: bit_vector (4 downto 0);
signal p,g: bit_vector(3 downto 0);

begin

ha0: hallfadder port map (a(0), b(0), p(0), g(0));
ha1: hallfadder port map (a(1), b(1), p(1), g(1));
ha2: hallfadder port map (a(2), b(2), p(2), g(2));
ha3: hallfadder port map (a(3), b(3), p(3), g(3));
module: clamod port map (p,g,c,cin);

s<= c(3 downto 0) xor p;
cout<= c(4);
end cla;