# Permission Module

## Purpose

The permission module accepts permission requests from authenticated callers. Each request carries a JWT so the service can authenticate the caller before evaluating the requested permission.

## DTOs

File: `proto/handyman/permission/dto/v1/permission_dtos.proto`

- `RequestPermissionRequest`
  - `jwt_token`: JWT authenticating the caller.
  - `permission`: Permission key being requested.
  - `resource`: Resource the permission applies to.
  - `reason`: Human-readable reason for the request.
- `RequestPermissionResponse`
  - `request_id`: Server-generated request identifier.
  - `status`: Request status.
- `RequestPermissionGroupRequest`
  - `jwt_token`: JWT authenticating the caller.
  - `permission_group`: Permission group key being requested.
  - `resource`: Resource the permission group applies to.
  - `reason`: Human-readable reason for the request.
- `RequestPermissionGroupResponse`
  - `request_id`: Server-generated request identifier.
  - `status`: Request status.

## Service

File: `proto/handyman/permission/service/v1/permission_service.proto`

- `PermissionService.RequestPermission`
  - Accepts `RequestPermissionRequest`.
  - Returns `RequestPermissionResponse`.
- `PermissionService.RequestPermissionGroup`
  - Accepts `RequestPermissionGroupRequest`.
  - Returns `RequestPermissionGroupResponse`.
