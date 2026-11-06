import { describe, expect, it } from "vitest";
import { ARC_TESTNET_CHAIN_ID, USDC_DECIMALS } from "./index.js";

describe("shared constants", () => {
  it("targets arc testnet with 6-decimal usdc", () => {
    expect(ARC_TESTNET_CHAIN_ID).toBe(5042002);
    expect(USDC_DECIMALS).toBe(6);
  });
});
