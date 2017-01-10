import PackageDescription

let package = Package(
    name: "TitanCacheControlMiddleware",
    dependencies: [
      .Package(url: "https://github.com/bermudadigitalstudio/titan-core.git", majorVersion: 0)
    ]
)
