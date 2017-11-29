----------------------------------------------------------------------
-- Author: Niels Pirotte
--
-- Project Name: Masterthesis Niels Pirotte
-- Package Name: constants
-- Description: Definition and settings of parameters ECC coprocessor
-- Information:
-- This implementation provides a ECC (Elliptic Curve Crypto) hardware implementation for an ASIC
-- We use the complete addition formulas for prime order elliptic curves as described by: Complete Addition Formulas for Prime Order Elliptic Curves by Joost Renes, Craig Costello, and Lejla Batina
-- Thereby reducing potential vulnerabilities (No distinction between doubling and addition). This is accomplished by defining a complete addition law on an Edwards EC
-- The goal is an implementation optimizing the area of the ASIC
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-- To determine number of bits for an integer
use IEEE.math_real."ceil";
use IEEE.math_real."log2";

package constants is
-- Parameters
--
-- Number of bits of the prime
constant log2primeM: integer := 4;
--
--constant primeM: std_logic_vector(log2primeM-1 downto 0) := "1101"; -- 13
constant primeM: std_logic_vector(log2primeM-1 downto 0) := "0111"; -- 7

--Onderstaande is nog niet nagekeken

--number of bits of the datapath d(digits)
constant d: integer := 4; --Zou dit werken?? wrs een te grote implementatie 32bit per int

--number of words (designed to be a multiple of 2)
constant e: integer := integer(ceil(log2(Real(d+1))));

--EC (Elliptic Curve)

end constants;  
