XCODEPROJ = kindle-highlights-viewer.xcodeproj

build: $(XCODEPROJ)
	xcodebuild -project $<  -configuration Release ARCHS="x86_64" build
