package com.examplecode.helloapk;

import android.app.Activity;
import android.os.Bundle;

public class HelloApkActivity extends Activity {
	static {
	 System.loadLibrary("hello-jni");   
	}
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
    }

	 public native String  stringFromJNI();       
}
