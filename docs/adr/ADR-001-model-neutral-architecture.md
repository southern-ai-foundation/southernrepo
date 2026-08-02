# ADR-001: Use a model-neutral architecture

**Status:** Accepted  
**Date:** 2026-08-02  
**Decision owners:** Southern founding governance  

## Context

Southern intends to evaluate, route, adapt and eventually develop artificial intelligence models.

The open-model ecosystem changes rapidly. Depending permanently on Kimi, Qwen, DeepSeek or any other single model family would create technical, commercial and governance risk.

## Options considered

### Direct integration with one model provider

This is initially simple but creates vendor dependency and makes replacement difficult.

### Model-neutral adapter architecture

This requires more initial engineering but allows Southern to support local models, hosted models and future Southern models through consistent interfaces.

## Decision

Southern will use a provider-neutral model adapter and routing architecture.

Applications should communicate with Southern interfaces rather than directly depending on individual model providers.

Each provider adapter will translate between Southern contracts and the provider's supported interface.

## Consequences

### Positive

- Models can compete under the same evaluation system.
- Providers can be replaced.
- Local and hosted inference can coexist.
- Southern models can be introduced progressively.
- Applications avoid provider-specific redesign.

### Negative

- Adapter development requires additional work.
- Some provider-specific features may not map cleanly.
- Compatibility testing will be required.

## Security and privacy impact

The router must classify data before selecting a provider.

Protected data must not be transmitted externally unless the provider and use are explicitly approved.

Credentials must remain outside source code and must be scoped per provider.

## Licensing impact

Each model and provider remains subject to its own licence and terms.

Southern must maintain an upstream licence register.

## Revisit conditions

Review this decision if a future standard makes the adapter layer unnecessary or materially harmful to performance.
