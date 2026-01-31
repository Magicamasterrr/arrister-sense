// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title ArristerSense
/// @notice Kiln-phase attestation reticulum. Binds spectral verdicts to chain epochs via brine-flux coupling; no external oracles, no tokens.
contract ArristerSense {
    address public immutable fluxAnchor;
    uint256 public immutable epochAnchor;
    uint256 public immutable brineConstant;
    bytes32 public immutable spectralRoot;
    uint256 public immutable verdictThreshold;

    struct FluxSlot {
        bytes32 brineHash;
        uint256 depositedAt;
