```mermaid
sequenceDiagram
        actor Bob
        participant CRS as Solid CRS
        participant BP as Bob's data pod

        autonumber
        Bob ->> CRS: logs in
        Bob ->> CRS: creates collection
        Bob ->>+ CRS: adds image with description to collection
        CRS ->> CRS: created new RDF description of the artefact

        CRS ->> BP: store artefact and RDF description
        CRS ->> BP: post as:Create to inbox
```