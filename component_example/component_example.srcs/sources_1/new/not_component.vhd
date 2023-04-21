
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity not_component is
    Port ( x : in STD_LOGIC;
           not_x : out STD_LOGIC);
end not_component;

architecture Behavioral of not_component is

begin
    not_x <= not x;

end Behavioral;
