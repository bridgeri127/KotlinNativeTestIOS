# KotlinNativeTestIOS

iOS app demonstrating consuming a cross platform Kotlin library defined outside of the project [here](https://github.com/bridgeri127/KotlinNativeTestLibrary).
This library was used as part of a talk I gave at the [Mobilize Dublin](https://www.meetup.com/Mobilize-Dublin/) meetup on [22 August 2018](https://www.meetup.com/Mobilize-Dublin/events/lnsxzpyxlbdc/)

Slides from this talk can be found at 

# How to use
1. Download the [Kotlin Native Library](https://github.com/bridgeri127/KotlinNativeTestLibrary) project
2. Build that project following the instructions [here](https://github.com/bridgeri127/KotlinNativeTestLibrary/blob/master/README.md)
3. From the root of that project, run the command `./gradlew copyFramework`
4. Open this project in Xcode
5. Navigate to the project settings in Xcode, find the "Embedded Binaries" section, and add the binary framework created in step 3. This will be located at `"{KotlinNativeTestLibraryPath}/build/konan/bin/iphone_universal_framework/"`
6. Navigate to the project build settings in Xcode and ensure `"{KotlinNativeTestLibraryPath}/build/konan/bin/" has been added to the search path field, and marked as recursive
7. Rebuild this project, it should now find the library
