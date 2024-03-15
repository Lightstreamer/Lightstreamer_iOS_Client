// swift-tools-version:5.3
//
// Copyright (c) Lightstreamer Srl
// See LICENSE.md for license terms
//

import PackageDescription

let package = Package(
    name: "Lightstreamer_iOS_Client",
    platforms: [
        .iOS("9.0")
    ],
    products: [
        .library(
            name: "Lightstreamer_iOS_Client", 
            targets: ["Lightstreamer_iOS_Client_Wrapper"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Lightstreamer_iOS_Client_Wrapper",
            dependencies: [
                .target(name: "Lightstreamer_iOS_Client")
            ],
            path: "Sources",
            linkerSettings: [
                .linkedLibrary("iconv"),
                .linkedFramework("Security"),
                .linkedFramework("SystemConfiguration")
            ]
        ),
        .binaryTarget(
            name: "Lightstreamer_iOS_Client", 
            url: "https://sdk.lightstreamer.com/ls-ios-client/4.3.3/lib/ls-ios-client-4.3.3.zip", 
            checksum: "815dc13a4da50337e273f51355a0360124eef466e95827b51f0bd820dd0f7077"
        )
    ]
)
