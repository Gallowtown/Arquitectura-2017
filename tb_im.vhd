--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:59:47 09/29/2017
-- Design Name:   
-- Module Name:   C:/Arquitectura/sumador y registro/RegistroSumador32bits/tb_im.vhd
-- Project Name:  RegistroSumador32bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IM
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

ENTITY TB_IM IS
END TB_IM;
 
ARCHITECTURE behavior OF TB_IM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IM
    PORT(
         address : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         outInst : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal outInst : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IM PORT MAP (
          address => address,
          reset => reset,
          outInst => outInst
        );

   stim_proc: process
   begin		
   reset<='1';
		address <= "00000000000000000000000000000000";
      wait for 100 ns;	
		reset<='0';
		address <= "00000000000000000000000000000011";
      wait;
   
   end process;

END;
