package lt.miror.kustomer;

import com.kustomer.kustomersdk.Kustomer;

import android.app.Activity;

import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;


public class RNKustomerModule extends ReactContextBaseJavaModule {

  public KustomerModule(ReactApplicationContext reactContext) {
    super(reactContext);
  }

  @Override
  public String getName() {
    return "KustomerModule";
  }

  @ReactMethod
  public void presentSupport() {
    final Activity activity = getCurrentActivity();
    Kustomer.showSupport(activity);
  }

  @ReactMethod
  public void presentKnowledgeBase() {
    final Activity activity = getCurrentActivity();
    Kustomer.presentKnowledgeBase(activity);
  }

  @ReactMethod
  public void presentCustomWebPage(String url) {
    final Activity activity = getCurrentActivity();
    Kustomer.presentCustomWebPage(activity, url);
  }

  @ReactMethod
  public void resetTracking() {
    Kustomer.resetTracking();
  }

  @ReactMethod
  public void identify(String hash) {
    Kustomer.identify(hash);
  }

  @ReactMethod
  public void setCurrentPageName(String pageName) {
    Kustomer.setCurrentPageName(pageName);
  }

}