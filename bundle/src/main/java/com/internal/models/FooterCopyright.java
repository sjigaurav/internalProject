package com.internal.models;


import org.apache.sling.api.resource.ValueMap;
import org.apache.sling.commons.json.JSONException;
import org.apache.sling.commons.json.JSONObject;

import java.util.ArrayList;
    public class FooterCopyright {
                private ValueMap properties;
                private String[]linkList;

                public FooterCopyright(){}

              public FooterCopyright(ValueMap properties){
                  this.properties=properties;
              }
                public ArrayList<UtilModel> getLinkList(){
                    ArrayList<UtilModel> values=new ArrayList<UtilModel>();
                   linkList = properties.get("list",new String[0]); //String[].class
                    try {
                        for (String temp : linkList) {
                            JSONObject json = new JSONObject(temp);
                            String link= json.getString("link");
                            String title = json.getString("title");
                            UtilModel utilModel = new UtilModel();
                            utilModel.setPropertyOne(link);
                            utilModel.setPropertyTwo(title);
                            values.add(utilModel);
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                      }
                    return values;
                }
    }






