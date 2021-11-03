```mermaid
sequenceDiagram
    autonumber
    actor alice as Alice
    participant dashboard as Alice's dashboard
    participant pod as Alice's POD
    participant orch as Alice's Orchestrator
    participant reg as Registration Hub

    reg->>+pod: Send as:Announce + RegistrationAction
    orch->>+pod: Read inbox
    orch->>+pod: Append Event Log
    orch->>+pod: Send "do archivation" suggestion to inbox
    alice->>+dashboard: Checks her inbox
    dashboard->>+pod: Find suggestion from orchestrator
    alice->>alice: Decides to follow suggestion or not  
```