import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Domain.ReservationDomain.rawValue,
    targets: [
        .interface(module: .domain(.ReservationDomain)),
        .implements(module: .domain(.ReservationDomain), dependencies: [
            .domain(target: .ReservationDomain, type: .interface)
        ]),
        .testing(module: .domain(.ReservationDomain), dependencies: [
            .domain(target: .ReservationDomain, type: .interface)
        ]),
        .tests(module: .domain(.ReservationDomain), dependencies: [
            .domain(target: .ReservationDomain)
        ])
    ]
)
