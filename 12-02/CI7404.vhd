--Maria fernanda 
--12/02
-- A1, A2,A3,A4,A5,A6: in bit;

ENTITY CI7404 is
port (A1, A2,A3,A4,A5,A6: in bit;
		Y1,Y2,Y3,Y4,Y5,Y6: OUT BIT);
end CI7404;

architecture miolo of CI7404 is
begin
			
			Y1<= NOT A1;
			Y2<= NOT A2;
			Y3<= NOT A3;
			Y4<= NOT A4;
			Y5<= NOT A5;
			Y6<= NOT A6;

end miolo;
			
