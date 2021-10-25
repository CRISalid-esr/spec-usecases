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
    manager->>dashReg: Send announce notification
    dashReg->>orchReg: Send announte notification
    orchReg->>pod: Forward announce notification
    orchReg->>podReg: Append Event Log
    orch->>pod: Read inbox
    orch->>pod: Append Event Log
```