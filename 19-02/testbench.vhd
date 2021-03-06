entity testbench is
end testbench;

architecture test of testbench is

component paridade is
generic(size: integer := 8); -- quantidade de bits 
port(input: in bit_vector (size-1 downto 0);
		bp: out bit);
end component;

signal saida: bit;
signal entrada: bit_vector (7 downto 0);

begin

dut: paridade port map(entrada, saida);

entrada <= "00000000",
				"01101000" after 10 ns,
				"10000010" after 20 ns,
				"01110011" after 30 ns,
				"00100100" after 40 ns,
				"01110000" after 50 ns,
				"00000000" after 60 ns;
end test;