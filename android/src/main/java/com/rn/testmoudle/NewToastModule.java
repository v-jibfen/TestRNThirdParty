package com.rn.testmoudle;

import android.view.Gravity;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by vfeng on 2020/5/23.
 */
public class NewToastModule extends ReactContextBaseJavaModule {
    private static ReactApplicationContext reactContext;

    private static final String DURATION_SHORT_KEY = "SHORT";
    private static final String DURATION_LONG_KEY = "LONG";
    private static final String GRAVITY_TOP_KEY = "TOP";
    private static final String GRAVITY_CENTER_KEY = "CENTER";
    private static final String GRAVITY_BOTTOM_KEY = "BOTTOM";

    public NewToastModule(ReactApplicationContext reactContext) {
        super(reactContext);
        reactContext = reactContext;
    }

    @Nullable
    @Override
    public Map<String, Object> getConstants() {
        final Map<String, Object> constants = new HashMap<>();
        constants.put(DURATION_SHORT_KEY, Toast.LENGTH_SHORT);
        constants.put(DURATION_LONG_KEY, Toast.LENGTH_LONG);
        constants.put(GRAVITY_TOP_KEY, Gravity.TOP);
        constants.put(GRAVITY_CENTER_KEY, Gravity.CENTER);
        constants.put(GRAVITY_BOTTOM_KEY, Gravity.BOTTOM);
        return constants;
    }

    @NonNull
    @Override
    public String getName() {
        return "NewToastAndroid";
    }

    @ReactMethod
    public void show(String message, int duration) {
        Toast.makeText(getReactApplicationContext(), message, duration).show();
    }

    @ReactMethod
    public void showWithGravity(String message, int duration, int gravity) {
        Toast toast =  Toast.makeText(getReactApplicationContext(), message, duration);
        toast.setGravity(gravity,0,0);
        toast.show();
    }
}
