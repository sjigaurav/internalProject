package com.internal.servlets;

import com.day.cq.wcm.api.Page;
import org.apache.felix.scr.annotations.*;
import org.apache.sling.commons.json.JSONArray;
import org.apache.sling.commons.json.JSONObject;
import org.osgi.service.component.ComponentContext;
import org.apache.felix.scr.annotations.sling.SlingServlet;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.servlets.SlingSafeMethodsServlet;
import org.apache.sling.api.resource.Resource;
import java.io.PrintWriter;
import java.util.Iterator;

@SlingServlet(paths = "/bin/page.html", methods = {"GET"}, generateComponent = false)
@Component(enabled = true, immediate = true, metatype = true)
@Properties({
        @Property(name = "workflow.model", label = "WorkFlow model",
                description = "Enter the workflow model (Path should be till /etc/MODELPATH/jcr:content/model )",
                value = "/etc/workflow/models/prismflow/prismflowtranslationconnector/jcr:content/model"),
        @Property(name = "prismflow.username", label = "Prismflow Username",
                description = "Enter the Prismflow Login Username",
                value = "username")
})
        public class ChildPages extends SlingSafeMethodsServlet {
    private String workFlowModel;
    private String prismflow;

    @Activate
    public void activate(final ComponentContext componentContext) {
        workFlowModel = (String)componentContext.getProperties().get("workflow.model");
        prismflow= (String)componentContext.getProperties().get("prismflow.username");
       /* System.out.print(workFlowModel);*/

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
            JSONObject jsonObject1 = new JSONObject();

            while(itr.hasNext()){
                Page temp = itr.next();
                String path = temp.getPath();
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("path",path);
                jsonObject.put("title",temp.getTitle());
                jsonArray.put(jsonObject);
            }
            jsonObject1.put("1",jsonArray);
             out.print(jsonObject1);



        }catch (Exception e){
            System.out.print(e);
        }
       System.out.print("================doGet===========");
    }
}