/* Copyright (C) 2024 Nicholas Amore - All Rights Reserved
** You may use, distribute, and modify this code under the
** terms of the MIT License
**
** You should have recieved a copy of the MIT License with
** this file. If not, please write to: namore7@gmail.com,
** or visit: https://github.com/aws/mit-0
**
** gameboyColorTop.sv
** Top level file for the Gameboy Color
*/

module gameboyColorTop (
  input clk_i
);

sharpSM83 sm83 (

);

pictureProcessingUnit PPU (

);

VRAM VRAM (

);

end module