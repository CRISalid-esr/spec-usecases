```mermaid
sequenceDiagram
    autonumber
    actor alice as Alice
    participant dashboard as Alice's dashboard
    participant orch as Alice's orchestrator
    participant pod as Alice's POD
    participant orchB as Bob's orchestrator
    participant hubSer as Service hub

    alice->>dashboard: Select artefect
    alice->>dashboard: Select service hub
    alice->>dashboard: Send notification
    dashboard->>orch: Send offer notification
    orch->>pod: Append Event Log
    orch->>hubSer: Send offer notification
```