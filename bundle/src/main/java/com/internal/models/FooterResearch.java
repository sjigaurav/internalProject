package com.internal.models;

import org.apache.felix.scr.annotations.Component;
import org.apache.sling.api.resource.ValueMap;
import org.apache.sling.commons.json.JSONException;
import org.apache.sling.commons.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@Component(immediate = true, enabled = true, metatype = false)
public class FooterResearch {

    ValueMap properties;

    ArrayList<UtilModel> titleList;

    String[] titleLinkList;

    public FooterResearch(){/* Empty Constructor */}

    public FooterResearch(ValueMap properties) {

        this.properties = properties;
    }

    public ArrayList<UtilModel> getTitleList() {
        titleList= new ArrayList<UtilModel>();
        String [] values   = properties.get("list", new String[0]);
        try {
            for (String temp : values) {
                JSONObject json = new JSONObject(temp);
                String listLink = json.getString("listLink");
                String title = json.getString("title");
                UtilModel utilModel =  new UtilModel();
                utilModel.setPropertyOne(title);
                utilModel.setPropertyTwo(listLink);
                titleList.add(utilModel);

            }
        } catch (JSONException e) {
            e.printStackTrace();
        }

        return titleList;
    }

    public ArrayList<UtilModel> getTitleLinkList() {
        ArrayList<UtilModel> valuesOne = new ArrayList<UtilModel>();

        titleLinkList = properties.get("link", new String[0]);
        try {
            for (String tempOne : titleLinkList) {
                JSONObject jsonObj = new JSONObject(tempOne);
                String link = jsonObj.getString("link");
                String site = jsonObj.getString("site");
                UtilModel utilModel = new UtilModel();
                utilModel.setPropertyOne(link);
                utilModel.setPropertyTwo(site);
                valuesOne.add(utilModel);


            }

        } catch (JSONException e) {
            e.printStackTrace();
        }

        return valuesOne;
    }
}
