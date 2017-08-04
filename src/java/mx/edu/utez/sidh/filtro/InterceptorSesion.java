/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.utez.sidh.filtro;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import java.util.Map;

/**
 *
 * @author Anselmo
 */
public class InterceptorSesion implements Interceptor{

    @Override
    public void destroy() {
        
    }

    @Override
    public void init() {
        
    }

    @Override
    public String intercept(ActionInvocation actionInvocado) throws Exception {
        
       Map session=actionInvocado.getInvocationContext().getSession();
       //must be true
       String s = (String) session.get("login");
        
        if(s==null){
            return Action.LOGIN;
        }else{
            return actionInvocado.invoke();
        }
    }
    
}
