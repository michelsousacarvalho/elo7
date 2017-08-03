package com.example.micheldesousacarvalho.elo7;

import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.webkit.WebView;

public class MainActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_main);
        View decorView = getWindow().getDecorView();
        WebView myWebView = (WebView) findViewById(R.id.webView);
        myWebView.loadUrl("https://michelsousacarvalho.github.io");

    }
}
