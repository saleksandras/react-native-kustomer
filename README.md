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


## Installation


### iOS
Follow [The Kustomer iOS SDK Installation Guide](https://github.com/kustomer/customer-ios/blob/master/README.md)


### Android
Follow [The Kustomer Android SDK Installation Guide](https://github.com/kustomer/customer-android/blob/master/README.md)



Include the library in your `android/app/build.gradle`

```gradle
apply plugin: "com.android.application"
...
dependencies {
    implementation fileTree(dir: "libs", include: ["*.jar"])
    implementation "com.android.support:appcompat-v7:23.0.1"
    implementation "com.facebook.react:react-native:0.29.+"
    implementation project(":react-native-kustomer") // <--- add this
}
```


## Installation



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

### Register Module (in MainApplication.java)

```java
import com.kustomer.kustomersdk.Kustomer; // <--- import
import lt.miror.kustomer.KustomerPackage; // <--- import


private static final String K_KUSTOMER_API_KEY = "your_api_key"; // <--- add this line to yout MainApplication class

@Override
protected List<ReactPackage> getPackages() {
    return Arrays.<ReactPackage>asList(
        new MainReactPackage(),
        new KustomerPackage() // <--- add this line to yout MainApplication class
    );
}

  @Override
  public void onCreate() {
    super.onCreate();
    SoLoader.init(this, /* native exopackage */ false);
    Kustomer.init(this, K_KUSTOMER_API_KEY); // <--- add this line to yout MainApplication class
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