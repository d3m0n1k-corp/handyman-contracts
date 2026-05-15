# Module Context

Use this file as the high-level context index for requests. Module-specific details live in `docs/modules/`.

## Request Context Rule

When a request touches routing, endpoint exposure, service registration, or module wiring, include the main router file as context. This repository does not have a main router file yet. Once it exists, record its path here and use it as required request context.

Current main router file: not created yet.

## Modules

### Authentication

Authentication defines token minting. A master caller generates JWT tokens for slave callers. Slaves then use those JWTs to authenticate calls into other services.

Proto files:

- `proto/handyman/authentication/dto/v1/authentication_dtos.proto`
- `proto/handyman/authentication/service/v1/authentication_service.proto`

Generated output:

- `gen/` only. This directory is ignored by git.

### Permission

Permission defines APIs for requesting a single permission or a permission group. Calls are authenticated with JWTs.

Proto files:

- `proto/handyman/permission/dto/v1/permission_dtos.proto`
- `proto/handyman/permission/service/v1/permission_service.proto`

Generated output:

- `gen/` only. This directory is ignored by git.
