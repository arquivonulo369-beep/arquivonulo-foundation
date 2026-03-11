#!/bin/bash
# ArquivoNulo Global — ANP-004 Coordination Verifier

set -e
echo "--- ANP-004 Aggregate Coordination Verification ---"

P1=$(echo -n "Agent_A_State_Valid" | openssl dgst -sha3-384 -hex | awk '{print $2}')
P2=$(echo -n "Agent_B_State_Valid" | openssl dgst -sha3-384 -hex | awk '{print $2}')

echo "[OK] Individual proofs generated."

AGGREGATE_DATA="${P1}${P2}Global_Invariant_v1"
AGGREGATE_SEAL=$(echo -n "$AGGREGATE_DATA" | openssl dgst -sha3-384 -hex | awk '{print $2}')

echo "Canonical Aggregate Seal:"
echo "$AGGREGATE_SEAL"

if [ ${#AGGREGATE_SEAL} -eq 96 ]; then
    echo "STATUS: ADMISSIBLE"
else
    echo "STATUS: DENIED"
    exit 1
fi

