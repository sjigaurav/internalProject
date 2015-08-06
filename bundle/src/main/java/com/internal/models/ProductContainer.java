package com.internal.models;

import org.apache.felix.scr.annotations.Component;
import org.apache.sling.api.resource.Resource;

import java.util.ArrayList;
import java.util.Iterator;
@Component(immediate = true,enabled = true)
public class ProductContainer {
    ArrayList<String> childPar;

    public ArrayList<String> getChildPar(Resource resource) {
        Resource res=resource.getChild("par");
        childPar=new ArrayList<String>();
        Iterator<Resource> itr=res.listChildren();
        while (itr.hasNext()){
            Resource items=itr.next();
            childPar.add(items.getPath());
        }
        return childPar;
    }


}
