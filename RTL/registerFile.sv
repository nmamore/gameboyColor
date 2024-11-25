/* Copyright (C) 2024 Nicholas Amore - All Rights Reserved
** You may use, distribute, and modify this code under the
** terms of the MIT License
**
** You should have recieved a copy of the MIT License with
** this file. If not, please write to: namore7@gmail.com,
** or visit: https://github.com/aws/mit-0
**
** registerFile.sv
** Contains registers for CPU use
*/

module registerFile (
  input       clk_i,
  input       rst_ni,
  
  input       regEn_i,
  input       regRW_i,
  input [2:0] regSel_i       
);

typedef enum logic [2:0] {
  REG_A = 3'b111,
  REG_B = 3'b000,
  REG_C = 3'b001,
  REG_D = 3'b101,
  REG_E = 3'b011,
  REG_H = 3'b100,
  REG_L = 3'b101,
} regSel_e;
regsel_e regSel;

logic [6:0] regEn;
logic [6:0] regRW;

programCounter PC (

);

stackPointer SP (

);

instructionRegister IR (

);

interruptEnable IE (

);

register8bit A (
  .clk_i   (clk_i),
  .rst_ni  (rst_ni),
  .regSel_i(regEn[0])
  .rw_i    (regRW[0]),
  .din_i   (din),
  .dout_o  (dout)
);

flagRegister F (


register8bit B (
  .clk_i   (clk_i),
  .rst_ni  (rst_ni),
  .regSel_i(regEn[1])
  .rw_i    (regRW[1]),
  .din_i   (din),
  .dout_o  (dout)
);

register8bit C (
  .clk_i   (clk_i),
  .rst_ni  (rst_ni),
  .regSel_i(regEn[2])
  .rw_i    (regRW[2]),
  .din_i   (din),
  .dout_o  (dout)
);

register8bit D (
  .clk_i   (clk_i),
  .rst_ni  (rst_ni),
  .regSel_i(regEn[3])
  .rw_i    (regRW[3]),
  .din_i   (din),
  .dout_o  (dout)
);

register8bit E (
  .clk_i   (clk_i),
  .rst_ni  (rst_ni),
  .regSel_i(regEn[4])
  .rw_i    (regRW[4]),
  .din_i   (din),
  .dout_o  (dout)
);

register8bit H (
  .clk_i   (clk_i),
  .rst_ni  (rst_ni),
  .regSel_i(regEn[5])
  .rw_i    (regRW[5]),
  .din_i   (din),
  .dout_o  (dout)
);

register8bit L (
  .clk_i   (clk_i),
  .rst_ni  (rst_ni),
  .regSel_i(regEn[6])
  .rw_i    (regRW[6]),
  .din_i   (din),
  .dout_o  (dout)
);

assign regSel = regSel_i;

always_comb begin
  case(regSel)
    REG_A: begin
      regEn = {6'h00, regEn_i};
      regRW = {6'h00, regRW_i};
    end
    REG_B: begin
      regEn = {5'h00, regEn_i, 1'h00};
      regRW = {5'h00, regRW_i, 1'h00};
    end
    REG_C: begin
      regEn = {4'h00, regEn_i, 2'h00};
      regRW = {4'h00, regRW_i, 2'h00};
    end
    REG_D: begin
      regEn = {3'h00, regEn_i, 3'h00};
      regRW = {3'h00, regRW_i, 3'h00};
    end
    REG_E: begin
      regEn = {2'h00, regEn_i, 4'h00};
      regRW = {2'h00, regRW_i, 4'h00};
    end
    REG_H: begin
      regEn = {1'h00, regEn_i, 5'h00};
      regRW = {1'h00, regRW_i, 5'h00};
    end
    REG_L: begin
      regEn = {regEn_i, 6'h00};
      regRW = {regRW_i, 6'h00};
    end
    default: begin
      regEn = '0;
      regRW = '0;
    end
  endcase
end

end module