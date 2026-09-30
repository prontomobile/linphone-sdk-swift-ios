// swift-tools-version:5.9
import PackageDescription

let baseURL = "https://github.com/prontomobile/linphone-sdk/releases/download/v5.6.0-amrwb-2"

let package = Package(
    name: "linphonesw",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "linphonesw", targets: ["linphonesw"]),
    ],
    targets: [
        .binaryTarget(
            name: "bctoolbox-ios",
            url: "\(baseURL)/bctoolbox-ios.xcframework.zip",
            checksum: "2d797c1f447b0e28fcc9589cffcc6603775bc6879c48def1296a3eb2f04dd102"
        ),
        .binaryTarget(
            name: "bctoolbox-tester",
            url: "\(baseURL)/bctoolbox-tester.xcframework.zip",
            checksum: "f120f69bd7520709b919ac3f450724b20ff9b3b8db9d62674fc29d59f5bf6d9a"
        ),
        .binaryTarget(
            name: "bctoolbox",
            url: "\(baseURL)/bctoolbox.xcframework.zip",
            checksum: "9263ae7157be663426cd6a5a33735005b1fb1b185a1c1c034b9b584a7b89b2d7"
        ),
        .binaryTarget(
            name: "belcard",
            url: "\(baseURL)/belcard.xcframework.zip",
            checksum: "474ae0861b79ff735cc55e2d5cddf6013b1f65873dfe21cbc8cf1b97458dc5dd"
        ),
        .binaryTarget(
            name: "belle-sip",
            url: "\(baseURL)/belle-sip.xcframework.zip",
            checksum: "d6c9f14cf569cb711d4af1b1a8b6c6535d61e763e270bd23c5b62340c7affe3d"
        ),
        .binaryTarget(
            name: "belr",
            url: "\(baseURL)/belr.xcframework.zip",
            checksum: "2222b42aa07b3afd0c2612b69077e457ab8c04fec75e36a7fad9446d4b08a4c5"
        ),
        .binaryTarget(
            name: "lime",
            url: "\(baseURL)/lime.xcframework.zip",
            checksum: "af83052d623aa66c01f44492551707183914f13e88a08958cfa194107d0be106"
        ),
        .binaryTarget(
            name: "linphone",
            url: "\(baseURL)/linphone.xcframework.zip",
            checksum: "ccf05de4da2258e324a539d8e6eab645bd1aae8a754575e8348a0c72ba5137e8"
        ),
        .binaryTarget(
            name: "linphonetester",
            url: "\(baseURL)/linphonetester.xcframework.zip",
            checksum: "c296d6ec07cc2bfc17d15940dcf5912c21a7630fae7d06a694a12d7cda6564ee"
        ),
        .binaryTarget(
            name: "mbedcrypto",
            url: "\(baseURL)/mbedcrypto.xcframework.zip",
            checksum: "3a980ce2cbbe9982b5eff1aa3392b1ea25c4a0e36dae8338c9e1601050637810"
        ),
        .binaryTarget(
            name: "mbedtls",
            url: "\(baseURL)/mbedtls.xcframework.zip",
            checksum: "2da0c92734136b38651b608f90071b573a2a6222dc9ed15faf06a8265eb8859d"
        ),
        .binaryTarget(
            name: "mbedx509",
            url: "\(baseURL)/mbedx509.xcframework.zip",
            checksum: "a704c650004f6a17aff867aed17ef3f99eb17540166b91fa55e497bd75a50b7b"
        ),
        .binaryTarget(
            name: "mediastreamer2",
            url: "\(baseURL)/mediastreamer2.xcframework.zip",
            checksum: "6d5305313a06ef4316db20d5cdd039287a6d23acbfc6d020e76ca9498f6d86db"
        ),
        .binaryTarget(
            name: "msamr",
            url: "\(baseURL)/msamr.xcframework.zip",
            checksum: "56307836dd28f2621e5f5927508a2a409eb3c6139812356efbdd95e386d2978a"
        ),
        .binaryTarget(
            name: "mscodec2",
            url: "\(baseURL)/mscodec2.xcframework.zip",
            checksum: "40624ad2a8768948ffe44a631317525970cc728081d80b64438007f031f5f590"
        ),
        .binaryTarget(
            name: "msopenh264",
            url: "\(baseURL)/msopenh264.xcframework.zip",
            checksum: "f639e1834734e4bda53471c99c6808d7428b2e03266fb8c3244564764549074e"
        ),
        .binaryTarget(
            name: "ortp",
            url: "\(baseURL)/ortp.xcframework.zip",
            checksum: "baf2330ac6a37c6cdb0423bf12bc75ad76078295be308a54cfa50994e706941d"
        ),
        .target(
            name: "linphonexcframeworks",
            dependencies: [
                "bctoolbox-ios", "bctoolbox-tester", "bctoolbox", "belcard",
                "belle-sip", "belr", "lime", "linphone", "linphonetester",
                "mbedcrypto", "mbedtls", "mbedx509", "mediastreamer2",
                "msamr", "mscodec2", "msopenh264", "ortp",
            ]
        ),
        .target(
            name: "linphonesw",
            dependencies: ["linphonexcframeworks"]
        ),
    ]
)
