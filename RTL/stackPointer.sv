/* Copyright (C) 2024 Nicholas Amore - All Rights Reserved
** You may use, distribute, and modify this code under the
** terms of the MIT License
**
** You should have recieved a copy of the MIT License with
** this file. If not, please write to: namore7@gmail.com,
** or visit: https://github.com/aws/mit-0
**
** stackPointer.sv
** Stack Pointer for the CPU
*/

module stackPointer (
  input         clk_i,
  
  inout  [7:0]  din_i,
  output [15:0] addressBus_o
);

logic [15:0] addressBus;
logic [7:0]  dataBus;



end module