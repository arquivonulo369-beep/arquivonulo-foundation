# Protocol Verification Guide

This guide explains how to verify the authenticity of the
ArquivoNulo Protocol repository.

---

## Clone the repository

git clone https://github.com/arquivonulo369-beep/arquivonulo-foundation.git

---

## List release tags

git tag

---

## Verify document hashes

Example using SHA3-384:

sha3sum -a 384 PROTOCOL_MANIFEST.md

Compare the output with the published release hashes.

---

## Verify archival snapshot

The repository snapshot is preserved in the Internet Archive:

https://web.archive.org/

