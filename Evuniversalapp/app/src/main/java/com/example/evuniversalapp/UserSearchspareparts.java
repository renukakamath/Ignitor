package com.example.evuniversalapp;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONObject;

public class UserSearchspareparts extends AppCompatActivity implements JsonResponse, AdapterView.OnItemClickListener {

    EditText e1;
    ListView l1;
    String[] firstname,place,phone,value,email,sparepart_id;
    String search,status;
    public static String sid;
    SharedPreferences sh;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_user_searchspareparts);
        e1=(EditText)findViewById(R.id.search);
        l1=(ListView) findViewById(R.id.list);
        l1.setOnItemClickListener(this);
        sh= PreferenceManager.getDefaultSharedPreferences(getApplicationContext());

        JsonReq JR = new JsonReq();
        JR.json_response = (JsonResponse) UserSearchspareparts.this;
        String q = "/viewspareparts";
        q = q.replace(" ", "%20");
        JR.execute(q);

        e1.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

            }

            @Override
            public void afterTextChanged(Editable editable) {

                search=e1.getText().toString();

                JsonReq JR = new JsonReq();
                JR.json_response = (JsonResponse) UserSearchspareparts.this;
                String q = "/searchspareparts?&search=" + search ;
                q = q.replace(" ", "%20");
                JR.execute(q);

            }
        });
    }

    @Override
    public void response(JSONObject jo) {
        try {


            status = jo.getString("status");
            Log.d("pearlssssss", status);


            if (status.equalsIgnoreCase("success")) {
                l1.setVisibility(View.VISIBLE);
                JSONArray ja1 = (JSONArray) jo.getJSONArray("data");
                firstname = new String[ja1.length()];
                place = new String[ja1.length()];
                phone = new String[ja1.length()];
                email = new String[ja1.length()];
                sparepart_id = new String[ja1.length()];




                value = new String[ja1.length()];

                for (int i = 0; i < ja1.length(); i++) {
                    firstname[i] = ja1.getJSONObject(i).getString("firstname");
                    place[i] = ja1.getJSONObject(i).getString("place");
                    phone[i] = ja1.getJSONObject(i).getString("phone");
                    email[i] = ja1.getJSONObject(i).getString("email");
                    sparepart_id[i] = ja1.getJSONObject(i).getString("sparepart_id");


                    value[i] = "\nfirstname:" + firstname[i] +"\nPlace:"+ place[i] +"\nphone:"+ phone[i] +"\nemail:"+email[i];

                }
                ArrayAdapter<String> ar = new ArrayAdapter<String>(getApplicationContext(), R.layout.custtext, value);

                l1.setAdapter(ar);



            }
            else{
                Toast.makeText(getApplicationContext(),"No Data",Toast.LENGTH_LONG).show();
                l1.setVisibility(View.GONE);
            }



        }

        catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            Toast.makeText(getApplicationContext(), e.toString(), Toast.LENGTH_LONG).show();

        }
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        sid=sparepart_id[i];

        final CharSequence[] items = {"View Product","Cancel"};

        AlertDialog.Builder builder = new AlertDialog.Builder(UserSearchspareparts.this);
        builder.setItems(items, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int item) {

                if (items[item].equals("View Product")) {


                    startActivity(new Intent(getApplicationContext(), UserViewporoduct.class));


                }  else if (items[item].equals("Cancel")) {


                    dialog.dismiss();
                }



            }

        });
        builder.show();
    }
}
