library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity test_Mul is
--  Port ( );
end test_Mul;

architecture Behavioral of test_Mul is
component wallace4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           prod : out STD_LOGIC_VECTOR (7 downto 0));
end component;
signal A,B: STD_LOGIC_VECTOR (3 downto 0);
signal prod:STD_LOGIC_VECTOR (7 downto 0);
begin
T1: wallace4 port map(A=>A,B=>B,prod=>prod);
T2:process
begin
A<="0000";
B<="0001";
wait for 100us;
A<="0101";
wait for 100us;
B<="0110";
wait for 100us;
A<="1001";
wait for 100us; 
end process;
end Behavioral;
