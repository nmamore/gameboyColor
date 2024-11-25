/* Copyright (C) 2024 Nicholas Amore - All Rights Reserved
** You may use, distribute, and modify this code under the
** terms of the MIT License
**
** You should have recieved a copy of the MIT License with
** this file. If not, please write to: namore7@gmail.com,
** or visit: https://github.com/aws/mit-0
**
** register8bit.sv
** General purpose 8-bit register
*/

module register8bit (
  input        clk_i,
  input        rst_ni,
  input        regSel_i,
  input        rw_i,
  inout  [7:0] din_i,
  output [7:0] dout_o
);

logic [7:0] reg_q, reg_d;

assign reg_d = din_i;
assign dout_o = reg_q;

always_ff @(posedge clk_i or negedge rst_ni) begin
  if (!rst_ni) begin
    reg_q <= '0;
  end else if (reg_sel && !rw) begin
    reg_q <= reg_d;
  end
end

end module