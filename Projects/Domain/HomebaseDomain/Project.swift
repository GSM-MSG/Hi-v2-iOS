import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Domain.HomebaseDomain.rawValue,
    targets: [
        .interface(module: .domain(.HomebaseDomain)),
        .implements(module: .domain(.HomebaseDomain), dependencies: [
            .domain(target: .HomebaseDomain, type: .interface)
        ]),
        .testing(module: .domain(.HomebaseDomain), dependencies: [
            .domain(target: .HomebaseDomain, type: .interface)
        ]),
        .tests(module: .domain(.HomebaseDomain), dependencies: [
            .domain(target: .HomebaseDomain)
        ])
    ]
)
