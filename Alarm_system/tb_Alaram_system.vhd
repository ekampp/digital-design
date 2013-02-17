--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:48:46 02/13/2013
-- Design Name:   
-- Module Name:   /home/rudolffortes/Digital_Design/digital-design/Alarm_system/tb_Alaram_system.vhd
-- Project Name:  Alarm_system
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Alarm_system
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_Alaram_system IS
END tb_Alaram_system;
 
ARCHITECTURE behavior OF tb_Alaram_system IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alarm_system
    PORT(
         Panic : IN  std_logic;
         Enable : IN  std_logic;
         Exiting : IN  std_logic;
         Window : IN  std_logic;
         Door : IN  std_logic;
         Garage : IN  std_logic;
         Alarm : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Panic : std_logic := '0';
   signal Enable : std_logic := '0';
   signal Exiting : std_logic := '0';
   signal Window : std_logic := '0';
   signal Door : std_logic := '0';
   signal Garage : std_logic := '0';

 	--Outputs
   signal Alarm : std_logic := '0';
	signal Secure : STD_LOGIC := '0';
	signal Triggered : STD_LOGIC := '0';
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alarm_system PORT MAP (
          Panic => Panic,
          Enable => Enable,
          Exiting => Exiting,
          Window => Window,
          Door => Door,
          Garage => Garage,
          Alarm => Alarm
        );
	Secure <= Window and Door and Garage;
	Triggered <= Enable and not Exiting and not Secure;

   -- Clock process definitions
   --<clock>_process :process
   --begin
	--	<clock> <= '0';
	--		wait for <clock>_period/2;
	--		<clock> <= '1';
	--		wait for <clock>_period/2;
	--   end process;
	-- 

   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		--wait for 100 ns; Panic<='1';
		--assert Panic = '1' report "Test Validated" severity WARNING;
		wait for 100 ns;
			Panic<='0';
			Enable<='0';
			Exiting<='0';
			Window<='0';
			Door<='0';
			Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='0';Window<='0';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='0';Window<='0';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='0';Window<='0';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='0';Window<='1';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='0';Window<='1';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='0';Window<='1';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='0';Window<='1';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='1';Window<='0';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='1';Window<='0';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='1';Window<='0';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='1';Window<='0';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='1';Window<='1';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='1';Window<='1';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='1';Window<='1';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='0';Exiting<='1';Window<='1';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='0';Window<='0';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='0';Window<='0';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='0';Window<='0';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='0';Window<='0';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='0';Window<='1';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='0';Window<='1';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='0';Window<='1';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='0';Window<='1';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='1';Window<='0';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='1';Window<='0';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='1';Window<='0';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='1';Window<='0';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='1';Window<='1';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='1';Window<='1';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='1';Window<='1';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='0';Enable<='1';Exiting<='1';Window<='1';Door<='1';Garage<='1';
		
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='0';Window<='0';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='0';Window<='0';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='0';Window<='0';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='0';Window<='0';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='0';Window<='1';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='0';Window<='1';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='0';Window<='1';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='0';Window<='1';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='1';Window<='0';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='1';Window<='0';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='1';Window<='0';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='1';Window<='0';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='1';Window<='1';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='1';Window<='1';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='1';Window<='1';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='0';Exiting<='1';Window<='1';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='0';Window<='0';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='0';Window<='0';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='0';Window<='0';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='0';Window<='0';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='0';Window<='1';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='0';Window<='1';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='0';Window<='1';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='0';Window<='1';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='1';Window<='0';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='1';Window<='0';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='1';Window<='0';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='1';Window<='0';Door<='1';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='1';Window<='1';Door<='0';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='1';Window<='1';Door<='0';Garage<='1';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='1';Window<='1';Door<='1';Garage<='0';
		wait for 100 ns;Panic<='1';Enable<='1';Exiting<='1';Window<='1';Door<='1';Garage<='1';

   --  wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
