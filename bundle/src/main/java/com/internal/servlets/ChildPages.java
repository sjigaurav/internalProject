package com.internal.servlets;

import com.day.cq.wcm.api.Page;
import org.apache.felix.scr.annotations.Modified;
import org.apache.sling.commons.json.JSONArray;
import org.apache.sling.commons.json.JSONObject;
import org.osgi.service.component.ComponentContext;
import org.apache.felix.scr.annotations.Activate;
import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.sling.SlingServlet;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.servlets.SlingSafeMethodsServlet;
import org.apache.sling.api.resource.Resource;
import java.io.PrintWriter;
import java.util.Iterator;

@SlingServlet(paths = "/bin/page.html", methods = {"GET"}, generateComponent = false)
@Component(enabled = true, immediate = true, metatype = true)
@Property(name = "workflow.model", label = "WorkFlow model",
        value = "/etc/workflow/models/prismflow/prismflowtranslationconnector/jcr:content/model")
public class ChildPages extends SlingSafeMethodsServlet {
    private String workFlowModel;

    @Activate
    public void activate(final ComponentContext componentContext) {
        workFlowModel = (String)componentContext.getProperties().get("workflow.model");
        System.out.print(workFlowModel);

    }
    @Modified
    protected void modified(final ComponentContext componentContext) {
        activate(componentContext);
    }

    @Override
    protected void doGet(final SlingHttpServletRequest request, final SlingHttpServletResponse response) {
        try{
            Resource resource = request.getResourceResolver().getResource(workFlowModel);
            Page page= resource.adaptTo(Page.class);
            PrintWriter out = response.getWriter();
            Iterator <Page> itr = page.listChildren();
            JSONArray jsonArray = new JSONArray();
            while(itr.hasNext()){
                Page temp = itr.next();
                String path = temp.getPath();
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("key",path);
                jsonObject.put("value",temp.getTitle());
                jsonArray.put(jsonObject);
            }
            out.print(jsonArray);



        }catch (Exception e){
            System.out.print(e);
        }
       System.out.print("================doGet===========");
    }
}