--Maria Fernanda
-- Sitemas digitais
-- Paridade atualizado 19/02

entity paridade is
generic(size: integer := 24); -- quantidade de bits 
port(input: in bit_vector (size-1 downto 0);
		bp: out bit);

end paridade;

architecture parity of paridade is
signal s: bit_vector(size downto 0);
begin

s(0) <= '0';
laco: for i in 0 to size-1 generate --(size - 1): chega atÃƒÆ’Ã‚Â© size -1
		s(i+1) <= s(i) xor input (i);
		
end generate;
bp<= s(size);

end parity;