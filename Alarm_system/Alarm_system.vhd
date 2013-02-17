----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:38:21 02/13/2013 
-- Design Name: 
-- Module Name:    Alarm_system - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Alarm_system is
    Port ( Panic : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Exiting : in  STD_LOGIC;
           Window : in  STD_LOGIC;
           Door : in  STD_LOGIC;
           Garage : in  STD_LOGIC;
           Alarm : out  STD_LOGIC);
end Alarm_system;

architecture Behavioral of Alarm_system is
	signal Secure : STD_LOGIC;
	signal Triggered : STD_LOGIC;
begin
Secure <= Window and Door and Garage;
Triggered <= Enable and not Exiting and not Secure;
Alarm <= Panic or Triggered;

end Behavioral;

