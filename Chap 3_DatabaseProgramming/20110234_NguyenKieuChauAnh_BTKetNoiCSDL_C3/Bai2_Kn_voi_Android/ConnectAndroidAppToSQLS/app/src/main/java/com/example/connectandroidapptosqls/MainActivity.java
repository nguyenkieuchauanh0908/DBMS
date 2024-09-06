package com.example.connectandroidapptosqls;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;

public class MainActivity extends AppCompatActivity {

    Connection connect;
    String ConnectionResult="";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    public void GetTextFromSQL(view v)
    {
        TextView tx1= (TextView) findViewById(R.id.textView);
        TextView tx2= (TextView) findViewById(R.id.textView2);
    }
}