```mermaid
sequenceDiagram
    autonumber
    actor alice as Alice
    participant dashboard as Alice's dashboard
    participant orch as Alice's orchestrator
    participant pod as Alice's POD
    participant robust as Robust links
    participant orchArc as Archival hub orchestrator
    participant arc as Archival hub

    alice->>dashboard: Send offer notification to archival hub
    dashboard->>orch: Send offer notification
    orch->>arc: Forward offer notification
    orch->>pod: Append Event Log
    orchArc->>arc: Poll archival hub inbox
    orchArc->>pod: Send automatic accept notification
    orch->>pod: Read inbox
    orch->>pod: Append Event Log
    orchArc->>robust: Request archivation
    orchArc->>robust: Poll to check if archivation complete
    orchArc->>pod: Send announce notification
    orch->>pod: Read inbox
    orch->>pod: Append Event Log  
```