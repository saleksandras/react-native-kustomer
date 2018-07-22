# react-native-kustomer
[Kustomer.com](https://www.kustomer.com) integration for React Native.


## Requirements

- A [Kustomer.com](https://www.kustomer.com/) API Key

### iOS
- Xcode 8.0+
- iOS 9.0+
- CocoaPods or Carthage

### Android

- Android Min SDK Version 21 i.e.., Android 5.0 Lollipop

## Installation

```bash
npm install react-native-kustomer --save
```

```bash
yarn add react-native-kustomer
```


The Kustomer SDK requires a valid API Key with role `org.tracking`. See [Getting Started - Create an API Key](https://dev.kustomer.com/v1/getting-started)


### iOS

#### Kustomer SDK

##### CocoaPods

The preferred installation method is with [CocoaPods](https://cocoapods.org). Add the following to your `Podfile`:

```ruby
pod 'Kustomer', :git => 'https://github.com/kustomer/customer-ios.git', :tag => '0.1.11'
```

##### Carthage

For [Carthage](https://github.com/Carthage/Carthage), add the following to your `Cartfile`:

```ogdl
github "kustomer/customer-ios" ~> 0.1.11
```

#### RNKustomerModule

1. Drang an drop `RNKustomerModule.xcodeproj` to your workspace
2. [Link target](https://help.apple.com/xcode/mac/current/#/dev51a648b07) to `libRNKustomerModule.a` library

##### Setup

In your project's UIApplicationDelegate:
```objective-c
#import <Kustomer/Kustomer.h>

static NSString *const kKustomerAPIKey = @"YOUR_API_KEY";

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [Kustomer initializeWithAPIKey:kKustomerAPIKey];
    return YES;
}
```

For more follow [The Kustomer iOS SDK Installation Guide](https://github.com/kustomer/customer-ios/blob/master/README.md)


### Android
Follow [The Kustomer Android SDK Installation Guide](https://github.com/kustomer/customer-android/blob/master/README.md)


#### Gradle

Include the library in your `app.gradle`:

```gradle
compile 'com.kustomer.kustomersdk:kustomersdk:0.1.2'
```

or if you're using `gradle v3 or higher

```gradle
implementation 'com.kustomer.kustomersdk:kustomersdk:0.1.2'
```

#### Or through Maven

```xml
<dependency>
  <groupId>com.kustomer.kustomersdk</groupId>
  <artifactId>kustomersdk</artifactId>
  <version>0.1.2</version>
  <type>pom</type>
</dependency>
```


#### Setup

Include the library in your `android/app/build.gradle`

```gradle
apply plugin: "com.android.application"
...
dependencies {
    implementation fileTree(dir: "libs", include: ["*.jar"])
    implementation "com.android.support:appcompat-v7:23.0.1"
    implementation "com.facebook.react:react-native:0.29.+"
    implementation 'com.kustomer.kustomersdk:kustomersdk:0.1.2' // <--- add this
    implementation project(":react-native-kustomer") // <--- add this
}
```


1. In your project's MainApplication Class:
```java
import com.kustomer.kustomersdk.Kustomer; // <--- import
import lt.miror.kustomer.KustomerPackage; // <--- import

private static final String K_KUSTOMER_API_KEY = "YOUR_API_KEY"; // <--- add this


@Override
protected List<ReactPackage> getPackages() {
    return Arrays.<ReactPackage>asList(
        new MainReactPackage(),
        new KustomerPackage() // <--- add this line
    );
}

@Override
public void onCreate() {
    super.onCreate();
    SoLoader.init(this, /* native exopackage */ false);
    Kustomer.init(this, K_KUSTOMER_API_KEY); // <--- add this
}
```

### Register Module (in MainActivity.java)

```java
import lt.miror.kustomer.KustomerPackage; // <--- import

protected List<ReactPackage> getPackages() {
    return Arrays.<ReactPackage>asList(
        new MainReactPackage(),
        new RNKustomerPackage() // <--- add this line to yout MainActivity class
    );
}
```

## Usage


```javascript
import KustomerModule from "react-native-kustomer";


// Convenience method that will present the chat interface.
KustomerModule.presentSupport();

// Convenience methods that will present a browser interface pointing to your KnowledgeBase.
KustomerModule.presentKnowledgeBase();

// Convenience method that will present a custom web page interface
KustomerModule.presentCustomWebPage("https://www.example.com");

// Resets the user session, clearing the user's access to any existing chats from the device.
KustomerModule.resetTracking();

// Securely identify a customer. Requires a valid JSON Web Token.
KustomerModule.identify("SECURE_ID_HASH");

// Track the current page on appearance
[Kustomer setCurrentPageName:@"Home"];

```