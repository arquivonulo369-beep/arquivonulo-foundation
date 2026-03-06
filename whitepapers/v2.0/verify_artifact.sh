#!/bin/bash

echo "====================================="
echo "ArquivoNulo Global Whitepaper v2.0"
echo "Artifact Verification"
echo "====================================="

echo ""
echo "1. Calculating SHA3-384 Secure Trust Hash..."
sha3sum -a 384 ArquivoNulo_Global_Whitepaper_v2.0_EN.pdf

echo ""
echo "Expected SHA3-384:"
echo "ffe902fbcf57a1ea8bfc0e2bea844534ac4253559d5e97961f265e27e72a5bc15c27b9185bbc45b39cbe7dfe59794ca9"

echo ""
echo "2. Verifying Ed25519 signature..."

ssh-keygen -Y verify \
-f ../../keys/arquivonulo_root_ed25519.pub \
-n arquivonulo-whitepaper \
-s ArquivoNulo_Global_Whitepaper_v2.0_EN.pdf.sig \
< ArquivoNulo_Global_Whitepaper_v2.0_EN.pdf

echo ""
echo "Verification complete."

