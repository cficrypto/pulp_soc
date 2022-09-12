module tcdm_converter_CFI_to_32 (
    XBAR_TCDM_BUS_CFI   master_cfi,
    XBAR_TCDM_BUS       slave_32
  );
  assign slave_32.req = master_cfi.req;
  assign slave_32.req = master_cfi.req;
  assign slave_32.add = master_cfi.add;
  assign slave_32.wen = master_cfi.wen;
  assign slave_32.wdata = master_cfi.wdata[31:0];
  assign slave_32.be = master_cfi.be;
  assign slave_32.gnt = master_cfi.gnt;

  // RESPONSE CHANNEL
  assign slave_32.r_opc = master_cfi.r_opc;
  assign slave_32.r_rdata = master_cfi.r_rdata;
  assign slave_32.r_valid = master_cfi.r_valid;

endmodule
