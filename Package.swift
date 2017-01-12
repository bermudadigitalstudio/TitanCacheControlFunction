import PackageDescription

let package = Package(
    name: "TitanCacheControlMiddleware",
    dependencies: [
      .Package(url: "https://github.com/bermudadigitalstudio/TitanCore.git", majorVersion: 0, minor: 1)
    ]
)
