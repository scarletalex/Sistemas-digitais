--Maria Fernanda
--Sistemas digitais
--18/02/2020

entity CI740vector is
	port(a: in bit_vector (5 downto 0);
		y: out bit_vector(5 downto 0));
end CI740VECTOR;

architecture miolo of ci740vector is
begin	
y <= not a;

end miolo;
	