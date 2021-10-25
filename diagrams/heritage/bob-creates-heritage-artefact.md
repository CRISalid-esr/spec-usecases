```mermaid
sequenceDiagram
        actor Bob
        participant CRS as Solid CRS
        actor BP as Bob's data pod

        autonumber
        Bob ->> CRS: logs in
        Bob ->> CRS: creates collection
        Bob ->>+ CRS: adds image with description to collection
        CRS ->> CRS: New artefact created

        CRS ->> BP: store new artefact
        CRS ->> BP: post as:Create to inbox
```