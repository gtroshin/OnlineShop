destination = "platform=iOS Simulator,OS=13.2,name=iPhone 11"
projectName = OnlineShop

test:
	set -o pipefail && xcodebuild -project $(projectName).xcodeproj -scheme $(projectName) -destination $(destination) test | xcpretty
