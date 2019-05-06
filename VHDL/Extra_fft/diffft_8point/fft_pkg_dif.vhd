library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.MATH_REAL.ALL;

package fft_pkg_dif is

type complex is 
    record
        r : real;
        i : real;
    end record;

type comp_array is array (0 to 7) of complex;
type comp_array2 is array (0 to 3) of complex;

function add (n1,n2 : complex) return complex;
function sub (n1,n2 : complex) return complex;
function mult (n1,n2 : complex) return complex;

end fft_pkg_dif; 

package body fft_pkg_dif is 

--addition of complex numbers
function add (n1,n2 : complex) return complex is

variable sum : complex;

begin 
sum.r:=n1.r + n2.r;
sum.i:=n1.i + n2.i;
return sum;
end add;

--subtraction of complex numbers.
function sub (n1,n2 : complex) return complex is

variable diff : complex;

begin 
diff.r:=n1.r - n2.r;
diff.i:=n1.i - n2.i;
return diff;
end sub;

--multiplication of complex numbers.
function mult (n1,n2 : complex) return complex is

variable prod : complex;

begin 
prod.r:=(n1.r * n2.r) - (n1.i * n2.i);
prod.i:=(n1.r * n2.i) + (n1.i * n2.r);
return prod;
end mult;

end fft_pkg_dif;