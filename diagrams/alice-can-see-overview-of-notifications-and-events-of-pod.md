```mermaid
sequenceDiagram
    actor alice as Alice
    participant dashboard as Alice's dashboard
    participant pod as Alice's POD

    alice->>+dashboard: View all notifications
    dashboard->>+pod: Get all notifications
    pod-->-dashboard: All notifications
    dashboard-->-alice: Show all notifications
```