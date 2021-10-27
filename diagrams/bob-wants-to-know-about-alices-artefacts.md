```mermaid
sequenceDiagram
    autonumber
    participant pod as Alice's POD
    participant orchB as Bob's orchestrator
    participant podB as Bob's POD

    orchB->>+pod: Watch Event Log
    pod-->>-orchB: See new announcement
    orchB->>podB: Send announce notification
```