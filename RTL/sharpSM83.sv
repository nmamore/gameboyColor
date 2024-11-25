/* Copyright (C) 2024 Nicholas Amore - All Rights Reserved
** You may use, distribute, and modify this code under the
** terms of the MIT License
**
** You should have recieved a copy of the MIT License with
** this file. If not, please write to: namore7@gmail.com,
** or visit: https://github.com/aws/mit-0
**
** sharpSM83.sv
** Top level file for SM83 CPU Core
*/

module sharpSM83 (
  input clk_i
);

controlUnit cpuControl (

);

registerFile cpuRegisters (

);

alu cpuALU (

);

idu cpuIDU (

);

end module