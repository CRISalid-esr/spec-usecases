```mermaid
sequenceDiagram
    participant dashboard as Alice's dashboard
    participant orch as Alice's orchestrator
    participant pod as Alice's POD
    participant dashReg as Registrator dashboard
    participant podReg as Registrator POD
    participant orchReg as Registrator orchestrator
    actor manager as Registration manager

    dashboard->>orch: Send offer notification
    orch->>pod: Append Event Log
    orch->>orchReg: Send offer notification
    orchReg->>pod: Send automatic accept notification
    orch->>pod: Read inbox
    orch->>pod: Append Event Log
    orchReg->>pod: Fetch artefact
    orchReg->>pod: Follow Signposting describedBy
    orchReg->>pod: Import and transform artefact metadata
    orchReg->>podReg: Upload draft registration record
    manager->>dashReg: Reads todo list
    manager->>podReg: Manually updates registration metadata
    manager->>dashReg: Send announce notification
    dashReg->>orchReg: Send announce notification
    orchReg->>pod: Forward announce notification
    orchReg->>podReg: Append Event Log
    orch->>pod: Read inbox
    orch->>pod: Append Event Log
```