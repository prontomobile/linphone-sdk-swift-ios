// swift-tools-version:5.9
import PackageDescription

let baseURL = "https://github.com/prontomobile/linphone-sdk/releases/download/v5.6.0-amrwb-1"

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
            checksum: "4e9384a697d4480c733e79516546c30baa457cb3cd595158b353b8442daa445b"
        ),
        .binaryTarget(
            name: "bctoolbox-tester",
            url: "\(baseURL)/bctoolbox-tester.xcframework.zip",
            checksum: "eec9ab1c91dcf2f72dfbc9afab84f630fecc1a9df1081f1c75cbb3b48b5b1951"
        ),
        .binaryTarget(
            name: "bctoolbox",
            url: "\(baseURL)/bctoolbox.xcframework.zip",
            checksum: "5aeb4cf77de2b14c2453be8a71f1e75b2c603a9f3fa2c2514092b414afbb5bba"
        ),
        .binaryTarget(
            name: "belcard",
            url: "\(baseURL)/belcard.xcframework.zip",
            checksum: "82541371438439af7728b8d15a43eba9eee831b2d7cbdbf40942e5c18ee5f96e"
        ),
        .binaryTarget(
            name: "belle-sip",
            url: "\(baseURL)/belle-sip.xcframework.zip",
            checksum: "29b880f9039f226a7c6013cb347c794ea78ee6bacbf7e759f7548f5cfebbc82e"
        ),
        .binaryTarget(
            name: "belr",
            url: "\(baseURL)/belr.xcframework.zip",
            checksum: "5ba8cab84bb197d6217b6bd38603d698c56f87e55e8b45a2db81407e908fc33b"
        ),
        .binaryTarget(
            name: "lime",
            url: "\(baseURL)/lime.xcframework.zip",
            checksum: "1fd3ca27bc34078bb4639d986878ada702ed5bf871955ce92f2b162e5f16573e"
        ),
        .binaryTarget(
            name: "linphone",
            url: "\(baseURL)/linphone.xcframework.zip",
            checksum: "4628466d6a725ca464f01fb0225e1215ef5660af5b26d96e196fa0d1e6b1318b"
        ),
        .binaryTarget(
            name: "linphonetester",
            url: "\(baseURL)/linphonetester.xcframework.zip",
            checksum: "912d468386e5e9e7d77b2286e182c55c81ffdc08e3570701687578891c1a4599"
        ),
        .binaryTarget(
            name: "mbedcrypto",
            url: "\(baseURL)/mbedcrypto.xcframework.zip",
            checksum: "c7a73042d76da37fc6d9a87aa18a72e60d2f64d80bd25b09c86284e5be9cbc4d"
        ),
        .binaryTarget(
            name: "mbedtls",
            url: "\(baseURL)/mbedtls.xcframework.zip",
            checksum: "076d534aac39c852fbb926284d344888c4ca08c3199c87a81e7d5f987be76a75"
        ),
        .binaryTarget(
            name: "mbedx509",
            url: "\(baseURL)/mbedx509.xcframework.zip",
            checksum: "c27f25db80f244372e1e25575fc0e6e0f52572e377eb6ddd62fe66c903ce17a6"
        ),
        .binaryTarget(
            name: "mediastreamer2",
            url: "\(baseURL)/mediastreamer2.xcframework.zip",
            checksum: "2bdcf10cc1c6113d092823f86b7903c31e76e93cb3db138a9a45a82a97e4f88a"
        ),
        .binaryTarget(
            name: "msamr",
            url: "\(baseURL)/msamr.xcframework.zip",
            checksum: "193c59ca52356c5c5a63500cfe5e85fce9b69699c9cfe5fb9a02f09c4f6803c7"
        ),
        .binaryTarget(
            name: "mscodec2",
            url: "\(baseURL)/mscodec2.xcframework.zip",
            checksum: "4233686ab8976bdb5c9b707b499f573a0177b17a2b5ee0e8639b2aa72ca5d055"
        ),
        .binaryTarget(
            name: "msopenh264",
            url: "\(baseURL)/msopenh264.xcframework.zip",
            checksum: "b7ddbe6883d11c3008f4ab31e1c3853c31a84edec5ddcccf5a1bdebf3ab1d6a6"
        ),
        .binaryTarget(
            name: "ortp",
            url: "\(baseURL)/ortp.xcframework.zip",
            checksum: "276df90580552abb972adadb10dbe71f4a332b69e04481ab968fc5c0dd627ca5"
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
