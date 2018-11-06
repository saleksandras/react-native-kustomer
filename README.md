# react-native-kustomer

[![i:npm]][l:npm]


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
pod 'Kustomer', :git => 'https://github.com/kustomer/customer-ios.git', :tag => '0.1.25'
```

##### Carthage

For [Carthage](https://github.com/Carthage/Carthage), add the following to your `Cartfile`:

```ogdl
github "kustomer/customer-ios" ~> 0.1.25
```

#### RNKustomerModule

1. Drang an drop `RNKustomerModule.xcodeproj` to your workspace
2. [Link target](https://help.apple.com/xcode/mac/current/#/dev51a648b07) to `libRNKustomerModule.a` library


<!-- You also need to add `RNKustomerModule` to `Build Settings > Search Paths > Header Search Paths` as a **`recursive`** search path, adding the following to both `Debug` and `Release` and ensuring `recursive` is selected (double click each line as opposed to editing it as text, and you'll see the dropdowns):

```
$(SRCROOT)/../node_modules/react-native-kustomer/ios/RNKustomerModule
``` -->

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

```diff
apply plugin: "com.android.application"
...
dependencies {
    implementation fileTree(dir: "libs", include: ["*.jar"])
    implementation "com.android.support:appcompat-v7:23.0.1"
    implementation "com.facebook.react:react-native:0.29.+"
+   implementation 'com.kustomer.kustomersdk:kustomersdk:0.1.2' // <--- add this
+   implementation project(":react-native-kustomer") // <--- add this
}
```


Include the library in your `android/settings.gradle`

```gradle
include ':react-native-kustomer'
project(':react-native-kustomer').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-kustomer/android')
```


1. In your project's MainApplication Class:
```diff
+ import com.kustomer.kustomersdk.Kustomer; // <--- import
+ import lt.miror.kustomer.RNKustomerPackage; // <--- import

+ private static final String K_KUSTOMER_API_KEY = "YOUR_API_KEY"; // <--- add this


@Override
protected List<ReactPackage> getPackages() {
    return Arrays.<ReactPackage>asList(
        new MainReactPackage(),
+       new RNKustomerPackage() // <--- add this line
    );
}

@Override
public void onCreate() {
    super.onCreate();
    SoLoader.init(this, /* native exopackage */ false);
+   Kustomer.init(this, K_KUSTOMER_API_KEY); // <--- add this
}
```

### Register Module (in MainActivity.java)

```diff
import lt.miror.kustomer.RNKustomerPackage; // <--- import

protected List<ReactPackage> getPackages() {
    return Arrays.<ReactPackage>asList(
        new MainReactPackage(),
+       new RNKustomerPackage() // <--- add this line to yout MainActivity class
    );
}
```

##### Declaring Activities

5. Add `KUSSessionsActivity` & `KUSChatActivity` into your `AndroidManifest.xml`
```xml
<activity android:name="com.kustomer.kustomersdk.Activities.KUSSessionsActivity"
            android:configChanges="orientation|screenSize|keyboardHidden"
            android:theme="@style/KUSAppTheme" />

<activity android:name="com.kustomer.kustomersdk.Activities.KUSChatActivity"
            android:configChanges="orientation|screenSize|keyboardHidden"
            android:theme="@style/KUSAppTheme" />
```

For more follow  [The Kustomer Android SDK Installation Guide](https://github.com/kustomer/customer-android/blob/master/README.md)

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

## Testing npm packages before publishing

- `npm pack`
- `cp package-name-0.0.0.tgz ~`
- `npm install ~/package-name-0.0.0.tgz`