# Authentication Module

## Purpose

The authentication module mints JWTs. A master caller generates tokens for slave callers, and slave callers use those JWTs to authenticate requests to other modules.

## DTOs

File: `proto/handyman/authentication/dto/v1/authentication_dtos.proto`

- `GenerateTokenRequest`
  - `master_jwt_token`: JWT proving the caller is allowed to mint slave tokens.
  - `slave_id`: Stable identifier for the slave caller receiving the token.
  - `audience`: Intended service or system audience for the generated token.
  - `scopes`: Permission scopes embedded in the generated token.
  - `expires_in_seconds`: Requested token lifetime.
- `GenerateTokenResponse`
  - `access_token`: Generated JWT for the slave caller.
  - `token_type`: Expected to be `Bearer`.
  - `expires_in_seconds`: Actual token lifetime granted.

## Service

File: `proto/handyman/authentication/service/v1/authentication_service.proto`

- `AuthenticationService.GenerateToken`
  - Accepts `GenerateTokenRequest`.
  - Returns `GenerateTokenResponse`.
  - The implementation should validate the master token before minting a slave JWT.
