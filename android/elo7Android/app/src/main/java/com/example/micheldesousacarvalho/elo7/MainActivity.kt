package com.example.micheldesousacarvalho.elo7

import android.support.v7.app.ActionBar
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.view.Window
import android.webkit.WebView

class MainActivity : AppCompatActivity() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        this.requestWindowFeature(Window.FEATURE_NO_TITLE)
        setContentView(R.layout.activity_main)
        val myWebView = findViewById(R.id.webView) as WebView
        myWebView.loadUrl("https://michelsousacarvalho.github.io")

    }
}
