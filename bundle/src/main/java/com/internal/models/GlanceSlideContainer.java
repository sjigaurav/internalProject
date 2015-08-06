package com.internal.models;

import org.apache.felix.scr.annotations.Component;
import org.apache.sling.api.resource.Resource;

import java.util.ArrayList;
import java.util.Iterator;
@Component(immediate = true, enabled = true)
public class GlanceSlideContainer {
    private ArrayList<String> childUnderPar;

    public ArrayList<String> getchildUnderPar(Resource resource) {

        Resource res = resource.getChild("par");
        childUnderPar = new ArrayList<String>();
        Iterator<Resource> itr = res.listChildren();
        while (itr.hasNext()) {
            Resource temp = itr.next();
            childUnderPar.add(temp.getPath());
        }
        return childUnderPar;
    }

}
