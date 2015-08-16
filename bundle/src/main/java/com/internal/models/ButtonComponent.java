package com.internal.models;

import org.apache.felix.scr.annotations.Component;
import org.apache.sling.api.resource.Resource;
import org.apache.sling.api.resource.ValueMap;
import com.day.cq.wcm.api.Page;

@Component(immediate = true, enabled = true)
public class ButtonComponent {

    private ValueMap properties;
    private Resource resource;
    private String button;
    private String pathField;

    public ButtonComponent() {
        /* empty constructor */
    }

    public ButtonComponent(Resource resource) {

        this.properties = resource.adaptTo(ValueMap.class);
        this.resource = resource;

    }

    public String getButton() {

        return properties.get("button", "");
    }

    public String getPathField() {

        this.pathField = properties.get("pathfield", "");
        Resource res = resource.getResourceResolver().getResource(pathField);
        if (res != null) {
            Page mainPage = res.adaptTo(Page.class);
            if (mainPage == null) {
                this.pathField = "";
            }
        } else {
            this.pathField = "";
        }
        return pathField;
    }
}
