package net.vietnamvisaonarrival.action;


	/*==================================================================
	 PayPal Express Checkout Call
	 ===================================================================
	*/


import java.util.HashMap;
import java.io.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

    public class expresscheckout   {

        public void checkout() throws IOException {

        	


            HttpSession session = (HttpSession) ActionContext.getContext().getSession();
            HttpServletResponse response=(HttpServletResponse) ActionContext.getContext().get(ServletActionContext.HTTP_RESPONSE);

            String paymentAmount = "22";
            String returnURL = "localhost/visa/confirm";

            /*
            '------------------------------------
            ' The cancelURL is the location buyers are sent to when they hit the
            ' cancel button during authorization of payment during the PayPal flow
            '
            ' This is set to the value entered on the Integration Assistant
            '------------------------------------
            */
            String cancelURL = "localhost/visa/cancle";

            /*
            '------------------------------------
            ' Calls the SetExpressCheckout API call
            '
            ' The CallShortcutExpressCheckout function is defined in the file PayPalFunctions.asp,
            ' it is included at the top of this file.
            '-------------------------------------------------
            */
            paypalfunctions ppf = new paypalfunctions();
            HashMap nvp = ppf.CallShortcutExpressCheckout (paymentAmount, returnURL, cancelURL);
            String strAck = nvp.get("ACK").toString();
            if(strAck !=null && strAck.equalsIgnoreCase("Success"))
            {
                session.setAttribute("token", nvp.get("TOKEN").toString());
                //' Redirect to paypal.com
                response.sendRedirect(response.encodeRedirectURL( nvp.get("TOKEN").toString() ));

                
            }
            else
            {
                // Display a user friendly Error on the page using any of the following error information returned by PayPal

                String ErrorCode = nvp.get("L_ERRORCODE0").toString();
                String ErrorShortMsg = nvp.get("L_SHORTMESSAGE0").toString();
                String ErrorLongMsg = nvp.get("L_LONGMESSAGE0").toString();
                String ErrorSeverityCode = nvp.get("L_SEVERITYCODE0").toString();
            }
   }

   
    }

  