package com.internal.models;

import org.apache.felix.scr.annotations.Component;
import org.apache.sling.commons.json.JSONException;
import org.apache.sling.commons.json.JSONObject;

import org.apache.sling.api.resource.ValueMap;

import java.util.ArrayList;

@Component(immediate = true,enabled = true)
public class FooterSlide {

    ValueMap properties;
    ArrayList<UtilModel> linkList;

    public FooterSlide(){}

   public FooterSlide(ValueMap properties){
         this.properties=properties;

     }
    public ArrayList<UtilModel> getLinkList() {
        linkList=new ArrayList<UtilModel>();
        String[] list = properties.get("list",new String[0]); //String[].class
        try {
            for (String items : list) {
                JSONObject jsonObj = new JSONObject(items);
                String link = jsonObj.getString("link");
                String title = jsonObj.getString("title");
                UtilModel utilModel=new UtilModel();
                utilModel.setPropertyOne(link);
                utilModel.setPropertyTwo(title);
                linkList.add(utilModel);
            }
        }catch (JSONException e) {
            e.printStackTrace();
        }
        return linkList;
    }

}

/*
package com.internal.models;

import org.apache.felix.scr.annotations.Component;
import org.apache.sling.commons.json.JSONException;
import org.apache.sling.commons.json.JSONObject;

import org.apache.sling.api.resource.ValueMap;

import java.util.ArrayList;

@Component(immediate = true,enabled = true)
public class FooterSlide {

    ValueMap properties;
    ArrayList<UtilModel> linkList;

    public FooterSlide(){}

   */
/* public FooterSlide(ValueMap properties){
        this.properties=properties;

    }*//*

    public ArrayList<UtilModel> getLinkList(ValueMap properties) {
        linkList=new ArrayList<UtilModel>();
        String[] list = properties.get("list",new String[0]); //String[].class
        try {
            for (String items : list) {
                JSONObject jsonObj = new JSONObject(items);
                String link = jsonObj.getString("link");
                String title = jsonObj.getString("title");
                UtilModel utilModel=new UtilModel();
                utilModel.setPropertyOne(link);
                utilModel.setPropertyTwo(title);
                linkList.add(utilModel);
            }
        }catch (JSONException e) {
            e.printStackTrace();
        }
        return linkList;
    }

}
*/
