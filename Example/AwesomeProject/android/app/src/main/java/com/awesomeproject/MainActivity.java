package com.awesomeproject;

import com.facebook.react.ReactActivity;
import com.facebook.react.ReactPackage;
import lt.miror.kustomer.RNKustomerPackage;
import com.facebook.react.shell.MainReactPackage;
import java.util.List;
import java.util.Arrays;

public class MainActivity extends ReactActivity {

    /**
     * Returns the name of the main component registered from JavaScript.
     * This is used to schedule rendering of the component.
     */
    @Override
    protected String getMainComponentName() {
        return "AwesomeProject";
    }

    protected List<ReactPackage> getPackages() {
        return Arrays.<ReactPackage>asList(
            new MainReactPackage(),
            new RNKustomerPackage()
        );
    }
}
