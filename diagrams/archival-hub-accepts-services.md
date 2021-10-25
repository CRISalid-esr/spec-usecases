```mermaid
sequenceDiagram
    actor alice as Alice
    participant dashboard as Alice's dashboard
    participant orch as Alice's orchestrator
    participant pod as Alice's POD
    participant robust as Robust links
    participant orchArc as Archival hub orchestrator

    alice->>dashboard: Send offer notification to archival hub
    dashboard->>orchArc: Send offer notification
    orchArc->>pod: Send automatic accept notification
    orch->>pod: Read inbox
    orch->>pod: Append Event Log
    orchArc->>robust: Request archivation
    orchArc->>robust: Poll to check if archivation complete
    orchArc->>pod: Send announce notification
    orch->>pod: Read inbox
    orch->>pod: Append Event Log   
```