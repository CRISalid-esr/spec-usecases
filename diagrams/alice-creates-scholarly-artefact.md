```mermaid
sequenceDiagram
    actor alice as Alice
    participant dashboard as Alice's dashboard
    participant orch as Alice's orchestrator
    participant pod as Alice's POD
 
    alice->>dashboard: Log in
    alice->>dashboard: Create new artefact
    dashboard->>pod: Create new artefact
    dashboard->>orch: Send create notification  

    alice->>dashboard: Add file to artefact
    dashboard->>pod: Add file to artefact
    dashboard->>orch: Send update notification

    alice->>dashboard: Mark artefect as "ready to view"
    dashboard->>orch: Send announce notification
    orch->>pod: Update Event Log with announcement
```