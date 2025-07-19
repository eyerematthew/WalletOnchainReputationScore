# WalletOnchainReputationScore - Drosera Trap

🚨 A custom Drosera Trap that verifies the reputation of a specific wallet address and returns the wallet address and linked Discord username if the reputation score is ≥ 1000.

---

## 🔍 What It Does

WalletOnchainReputationScore is a smart contract Trap that:
- Collects a **hardcoded reputation score** (mocked as 1337).
- Checks if the score is greater than 1000.
- Responds with (true, wallet, discord) if qualified.
- Else respond with false

This idea illustrates how reputation-based role access could function, utilising on-chain identity or trust scores, essentially providing a glimpse into how communities might gate roles in the future based on credibility.

---

## 📦 Deployment Info

- **Trap Address**: `0x5bdBEE57bdD72B420d3cBb207Fb28B1CCF550A83`
- **Response Function**: `True(string),wallet(string),respondWithDiscordName(string),`
- **Discord**: `cryptomaster869#0000`

---

## ✅ Status

- Deployed on Ethereum Hoodi ✅  
- Passed Dryrun ✅  
- Verified `shouldRespond == true` ✅

---

## 🔗 Related Links

- Tweet: [tweet link here](.)

---
