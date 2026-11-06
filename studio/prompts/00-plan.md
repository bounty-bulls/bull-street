# Studio prompt 00: plan mode

Paste into Arc Studio **Plan mode** (or run with `arc-studio run`).

> Plan an onchain finance app called OpenShare on Arc testnet, settling in USDC (`0x3600000000000000000000000000000000000000`, 6 decimals). Indian share owners pledge shares to bonded brokers (off-chain, CDSL) and mint one ERC-20 token per pledged share at any hour. Holders trade tokens against USDC in a constant-product pool and redeem through a multi-level queue (reserve → draining/defaulted brokers → volunteers → at-risk → normal). Brokers post USDC bonds and are paid out or slashed by contract rules. World ID gates minter and broker roles (one human, one role) via server-signed EIP-712 attestations. Contracts: Params, SessionClock, PriceOracle, Compliance, RoleRegistry, AssetFactory/OToken, BondVault, BrokerRegistry, LevelBook, PledgeRegistry, RedemptionEngine, OpenShareMarket. Produce an architecture plan only; contracts will come from our GitHub repo.
