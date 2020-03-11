entity checksum is 
port(B1, B2, CS: in bit_vector(7 downto 0);
		saida: out bit);
end checksum;

architecture check of checksum is

component somanbit is
	generic(size: integer := 8);
	port( a,b : in  bit_vector(size-1 downto 0);
		 	  s : out bit_vector(size-1 downto 0);
		   cin : in  bit;
		  cout : out bit);
end component;

signal temp, sum: bit_vector(7 downto 0);
signal tp1, tp2: bit;

begin

soma1: somanbit port map (B1, B2, temp, '0',tp1);
soma2: somanbit port map (temp, CS, sum, '0',tp2);

saida<= sum(0) or sum(1) or sum(2) or sum(3) or
			sum(4) or sum(5) or sum(6) or sum(7);
			
end check;