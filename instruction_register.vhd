----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:12:07 03/25/2014 
-- Design Name: 
-- Module Name:    instruction_register - Behavioral 
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

entity instruction_register is
		Generic ( size: integer :=16);
		Port (data_in : in  STD_LOGIC_VECTOR (size-1 downto 0);
				data_out : out  STD_LOGIC_VECTOR (size-1 downto 0));
end instruction_register;

architecture arch of instruction_register is
		component register_cell is
		  Generic ( size: integer :=size);
		  Port (data_in : in  STD_LOGIC_VECTOR (size-1 downto 0);
					 data_out: out STD_LOGIC_VECTOR (size-1 downto 0);
					 clock : in  STD_LOGIC);
		end component;
		
		signal clock: STD_LOGIC;
begin
	clock <= '1';
	rc: register_cell port map(data_in, data_out, clock);
end arch;

