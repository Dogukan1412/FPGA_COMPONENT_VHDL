
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity top_design is
    Port ( in1 : in STD_LOGIC_VECTOR (1 downto 0);
           in2 : in STD_LOGIC_VECTOR (1 downto 0);
           out1 : out STD_LOGIC);
end top_design;

architecture Behavioral of top_design is

------AND COMPONENT-------
component and_component is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end component;

-------NOT COMPONENT------
component not_component is
    Port ( x : in STD_LOGIC;
           not_x : out STD_LOGIC);
end component;

signal transmission : std_logic_vector(2 downto 0);

begin

    comp_0 : and_component port map(
        a => in1(0),
        b => in2(0),
        c => transmission(0)
    );
    
    comp_1 : and_component port map(
        a => in1(1),
        b => in2(1),
        c => transmission(1)
    );
    
    comp_2 : and_component port map(
        a => transmission(0),
        b => transmission(1),
        c => transmission(2)
    );
    
    comp_3 : not_component port map(
        x => transmission(2),
        not_x => out1
    );

end Behavioral;
