import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    static let GAuthSignin = TargetDependency.external(name: "GAuthSignin")
    static let Configure = TargetDependency.external(name: "Configure")
    static let SnapKit = TargetDependency.external(name: "SnapKit")
    static let Swinject = TargetDependency.external(name: "Swinject")
}

public extension Package {
}
