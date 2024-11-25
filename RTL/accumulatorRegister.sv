/* Copyright (C) 2024 Nicholas Amore - All Rights Reserved
** You may use, distribute, and modify this code under the
** terms of the MIT License
**
** You should have recieved a copy of the MIT License with
** this file. If not, please write to: namore7@gmail.com,
** or visit: https://github.com/aws/mit-0
**
** accumulatorRegister.sv
** Modification of general purpose 8-bit register for handing accumulation
*/

module accumulatorRegister (
  input        clk_i,
  input        rst_ni,
  input        regSel_i,
  input        rw_i,
  inout  [7:0] din_i,
  output [7:0] dout_o
);

logic [7:0] reg_q, reg_d;

assign reg_d = din_i;

always_ff @(posedge clk_i or negedge rst_ni) begin
  if (!rst_ni) begin
    reg_q <= '0;
  end else if (reg_sel && !rw) begin
    reg_q <= reg_d;
  end else if (reg_sel && rw) begin
    dout_o <= reg_q;
  end else begin
    reg_q <= req_q;
  end
end

end module