import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Domain.NoticeDomain.rawValue,
    targets: [
        .interface(module: .domain(.NoticeDomain)),
        .implements(module: .domain(.NoticeDomain), dependencies: [
            .domain(target: .NoticeDomain, type: .interface)
        ]),
        .testing(module: .domain(.NoticeDomain), dependencies: [
            .domain(target: .NoticeDomain, type: .interface)
        ]),
        .tests(module: .domain(.NoticeDomain), dependencies: [
            .domain(target: .NoticeDomain)
        ])
    ]
)
