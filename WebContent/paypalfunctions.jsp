<%
	/*==================================================================
	 PayPal Express Checkout Module
	 ===================================================================
	--------------------------------------------------------------------
	*/
%>

<%@ page language="java" %>
<%@ page language="java" import="java.net.URLDecoder.*" %> 
<%@ page language="java" import="java.util.*" %> 
<%@ page language="java" import="java.util.HashMap" %> 
<%@ page language="java" import="java.util.StringTokenizer.*" %> 
<%@ page language="java" import="java.io.*" %> 
<%@ page language="java" import="java.net.*" %> 
<%@ page language="java" import="javax.net.ssl.*" %> 
 
<%

	/*
	'------------------------------------
	' PayPal API Credentials
	' Replace <API_USERNAME> with your API Username
	' Replace <API_PASSWORD> with your API Password
	' Replace <API_SIGNATURE> with your Signature
	'------------------------------------
	*/
	gv_APIUserName	= "beatcourse-facilitator_api1.live.com";
	gv_APIPassword	= "UUT64JK2ZW4ZZWQ5";
	gv_APISignature = "ARPYLloOoRkQbApep-6K4dbLE7DYA3eKtVrGh2KwKrLk-XvEBT94a-gn";

	
	//BN Code is only applicable for partners
	gv_BNCode		= "PP-ECWizard"; 
	
	boolean bSandbox = true;
		
	/*
	Servers for NVP API
	Sandbox: https://api-3t.sandbox.paypal.com/nvp
	Live: https://api-3t.paypal.com/nvp
	*/
	 
	/*
	Redirect URLs for PayPal Login Screen
	Sandbox: https://www.sandbox.paypal.com/webscr?cmd=_express-checkout&token=XXXX
	Live: https://www.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=XXXX
	*/
 	
	if (bSandbox == true)
	{
		gv_APIEndpoint = "https://api-3t.sandbox.paypal.com/nvp";
		PAYPAL_URL = "https://www.sandbox.paypal.com/webscr?cmd=_express-checkout&token=";
	}
	else
	{
		gv_APIEndpoint = "https://api-3t.paypal.com/nvp";
		PAYPAL_URL = "https://www.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=";
	} 

	String HTTPREQUEST_PROXYSETTING_SERVER = "";
	String HTTPREQUEST_PROXYSETTING_PORT = "";
	boolean USE_PROXY = false;
	
	gv_Version	= "93";
	
	//WinObjHttp Request proxy settings.
	gv_ProxyServer	= HTTPREQUEST_PROXYSETTING_SERVER;
	gv_ProxyServerPort = HTTPREQUEST_PROXYSETTING_PORT;
	gv_Proxy		= 2;	//'setting for proxy activation
	gv_UseProxy		= USE_PROXY;

	
%>

<%!
	
	String gv_APIEndpoint;
	String gv_APIUserName;
	String gv_APIPassword;
	String gv_APISignature;
	String gv_BNCode;
	
	String gv_Version;
	String gv_nvpHeader;
	String gv_ProxyServer;	
	String gv_ProxyServerPort; 
	int gv_Proxy;
	boolean gv_UseProxy;
	String PAYPAL_URL;


	/*********************************************************************************
	  * CallShortcutExpressCheckout: Function to perform the SetExpressCheckout API call 
	  *
	  * Inputs:  
	  *		paymentAmount:  	Total value of the shopping cart
	  *		currencyCodeType: 	Currency code value the PayPal API
	  *		paymentType: 		paymentType has to be one of the following values: Sale or Order or Authorization
	  *		returnURL:			the page where buyers return to after they are done with the payment review on PayPal
	  *		cancelURL:			the page where buyers return to when they cancel the payment review on PayPal	  
	  *
	  * Output: Returns a HashMap object containing the response from the server.
	*********************************************************************************/
	public HashMap CallShortcutExpressCheckout( String paymentAmount, String currencyCodeType, String paymentType, 
												String returnURL, String cancelURL,
												HttpSession session)
	{
		
		session.setAttribute("paymentType", paymentType);
		session.setAttribute("currencyCodeType", currencyCodeType);

		/* 
		Construct the parameter string that describes the PayPal payment
		the varialbes were set in the web form, and the resulting string
		is stored in $nvpstr
		*/
	    String nvpstr = "&PAYMENTREQUEST_0_AMT=" + paymentAmount + "&PAYMENTREQUEST_0_PAYMENTACTION=" + paymentType + "&ReturnUrl=" + URLEncoder.encode( returnURL ) + "&CANCELURL=" + URLEncoder.encode( cancelURL ) + "&PAYMENTREQUEST_0_CURRENCYCODE=" + currencyCodeType;

		/* 
		Make the call to PayPal to get the Express Checkout token
		If the API call succeded, then redirect the buyer to PayPal
		to begin to authorize payment.  If an error occured, show the
		resulting errors
		*/
		
	    HashMap nvp = httpcall("SetExpressCheckout", nvpstr);
		String strAck = nvp.get("ACK").toString();
		if(strAck !=null && strAck.equalsIgnoreCase("Success"))
		{
			session.setAttribute("TOKEN", nvp.get("TOKEN").toString());
		}
		
		return nvp;
	}

	/*********************************************************************************
	  * CallMarkExpressCheckout: Function to perform the SetExpressCheckout API call 
	  *
	  * Inputs:  
	  *		paymentAmount:  	Total value of the shopping cart
	  *		currencyCodeType: 	Currency code value the PayPal API
	  *		paymentType: 		paymentType has to be one of the following values: Sale or Order or Authorization
	  *		returnURL:			the page where buyers return to after they are done with the payment review on PayPal
	  *		cancelURL:			the page where buyers return to when they cancel the payment review on PayPal
	  *		shipToName:		the Ship to name entered on the merchant's site
	  *		shipToStreet:		the Ship to Street entered on the merchant's site
	  *		shipToCity:			the Ship to City entered on the merchant's site
	  *		shipToState:		the Ship to State entered on the merchant's site
	  *		shipToCountryCode:	the Code for Ship to Country entered on the merchant's site
	  *		shipToZip:			the Ship to ZipCode entered on the merchant's site
	  *		shipToStreet2:		the Ship to Street2 entered on the merchant's site
	  *		phoneNum:			the phoneNum  entered on the merchant's site  
	  *
	  * Output: Returns a HashMap object containing the response from the server.
	*********************************************************************************/
	public HashMap CallMarkExpressCheckout( String paymentAmount, String currencyCodeType, String paymentType, String returnURL, 
								String cancelURL, String shipToName, String shipToStreet, String shipToCity, String shipToState,
								String shipToCountryCode, String shipToZip, String shipToStreet2, String phoneNum,
								HttpSession session)
	{

		session.setAttribute("paymentType", paymentType);
		session.setAttribute("currencyCodeType", currencyCodeType);
		
		/* 
		Construct the parameter string that describes the PayPal payment
		the varialbes were set in the web form, and the resulting string
		is stored in $nvpStr
		*/
	    String nvpStr = "ADDROVERRIDE=1&PAYMENTREQUEST_0_AMT=" + paymentAmount + "&PAYMENTREQUEST_0_PAYMENTACTION=" + paymentType;
		nvpStr = nvpStr + "&PAYMENTREQUEST_0_CURRENCYCODE=" + currencyCodeType + "&ReturnUrl=" + URLEncoder.encode( returnURL ) + "&CANCELURL=" + URLEncoder.encode( cancelURL );
		nvpStr = nvpStr + "&PAYMENTREQUEST_0_SHIPTONAME=" + shipToName + "&PAYMENTREQUEST_0_SHIPTOSTREET=" + shipToStreet + "&PAYMENTREQUEST_0_SHIPTOSTREET2=" + shipToStreet2;
		nvpStr = nvpStr + "&PAYMENTREQUEST_0_SHIPTOCITY=" + shipToCity + "&PAYMENTREQUEST_0_SHIPTOSTATE=" + shipToState + "&PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE=" + shipToCountryCode;
		nvpStr = nvpStr + "&PAYMENTREQUEST_0_SHIPTOZIP=" + shipToZip + "&PAYMENTREQUEST_0_SHIPTOPHONENUM" + phoneNum;

		/* 
		Make the call to PayPal to set the Express Checkout token
		If the API call succeded, then redirect the buyer to PayPal
		to begin to authorize payment.  If an error occured, show the
		resulting errors
		*/
		
	    HashMap nvp = httpcall("SetExpressCheckout", nvpStr);
		String strAck = nvp.get("ACK").toString();
	    if(strAck !=null && (strAck.equalsIgnoreCase("Success") || strAck.equalsIgnoreCase("SuccessWithWarning")))
		{
			session.setAttribute("TOKEN", nvp.get("TOKEN").toString());
		}			
		return nvp;
	}


	/*********************************************************************************
	  * GetShippingDetails: Function to perform the GetExpressCheckoutDetails API call 
	  *
	  * Inputs:  None
	  *
	  * Output: Returns a HashMap object containing the response from the server.
	*********************************************************************************/
	public HashMap GetShippingDetails( String token, HttpSession session)
	{
		/* 
		Build a second API request to PayPal, using the token as the
		ID to get the details on the payment authorization
		*/
	    
		String nvpstr= "&TOKEN=" + token;

	   /*
	    Make the API call and store the results in an array.  If the
		call was a success, show the authorization details, and provide
		an action to complete the payment.  If failed, show the error
		*/
	    
		HashMap nvp = httpcall("GetExpressCheckoutDetails", nvpstr);
		String strAck = nvp.get("ACK").toString();
	    if(strAck !=null && (strAck.equalsIgnoreCase("Success") || strAck.equalsIgnoreCase("SuccessWithWarning")))
		{
			session.setAttribute("PAYERID", nvp.get("PAYERID").toString());
		}			
		return nvp;
	}
	
	/*********************************************************************************
	  * ConfirmPayment: Function to perform the DoExpressCheckoutPayment API call 
	  *
	  * Inputs:  None
	  *
	  * Output: Returns a HashMap object containing the response from the server.
	*********************************************************************************/
	public HashMap ConfirmPayment( String finalPaymentAmount, HttpSession session, HttpServletRequest request)
	{

		/*
		'----------------------------------------------------------------------------
		'----	Use the values stored in the session from the previous SetEC call	
		'----------------------------------------------------------------------------
		*/
		String token 			=  session.getAttribute("TOKEN").toString();
		String currencyCodeType	=  session.getAttribute("currencyCodeType").toString();
		String paymentType 		=  session.getAttribute("paymentType").toString();
		String payerID 			=  session.getAttribute("PAYERID").toString();
		String serverName 		=  request.getServerName();

		String nvpstr  = "&TOKEN=" + token + "&PAYERID=" + payerID + "&PAYMENTREQUEST_0_PAYMENTACTION=" + paymentType + "&PAYMENTREQUEST_0_AMT=" + finalPaymentAmount;
		nvpstr = nvpstr + "&PAYMENTREQUEST_0_CURRENCYCODE=" + currencyCodeType + "&IPADDRESS=" + serverName;
		
	    /* 
		Make the call to PayPal to finalize payment
		If an error occured, show the resulting errors
	    */
		HashMap nvp = httpcall("DoExpressCheckoutPayment", nvpstr);
		
		return nvp;
	}

	
	HashMap DirectPayment ( String paymentType, String paymentAmount,
						String creditCardType, String creditCardNumber, String expDate, String cvv2,
						String firstName, String lastName, String street, String city, String state, String zip, String countryCode,
                        String currencyCode, String IPAddress)
    {
		String nvpStr = "Amt=" + paymentAmount + "&PAYMENTACTION=" + paymentType;
		nvpStr += "&IPADDRESS=" + IPAddress;
        nvpStr += "&CREDITCARDTYPE=" + creditCardType + "&ACCT=" + creditCardNumber + "&EXPDATE=" + expDate + "&CVV2=" + cvv2;
        nvpStr += "&FIRSTNAME=" + firstName + "&LASTNAME=" + lastName + "&STREET=" + street + "&CITY=" + city + "&STATE=" + state + "&COUNTRYCODE=" + countryCode + "&ZIP=" + zip;
        nvpStr += "&CURRENCYCODE=" + currencyCode;

        return httpcall("DoDirectPayment", nvpStr);
    }
	
	/*********************************************************************************
	  * httpcall: Function to perform the API call to PayPal using API signature
	  * 	@methodName is name of API  method.
	  * 	@nvpStr is nvp string.
	  * returns a NVP string containing the response from the server.
	*********************************************************************************/
	public HashMap httpcall( String methodName, String nvpStr)
	{
		
		String version = "2.3";
		String agent = "Mozilla/4.0";
		String respText = "";
		HashMap nvp=null;

		//deformatNVP( nvpStr );	
		String encodedData = "METHOD=" + methodName + "&VERSION=" + gv_Version + "&PWD=" + gv_APIPassword + "&USER=" + gv_APIUserName + "&SIGNATURE=" + gv_APISignature + nvpStr + "&BUTTONSOURCE=" + gv_BNCode;

		try 
		{
			URL postURL = new URL( gv_APIEndpoint );
			HttpURLConnection conn = (HttpURLConnection)postURL.openConnection();

			// Set connection parameters. We need to perform input and output, 
	        // so set both as true. 
			conn.setDoInput (true);
			conn.setDoOutput (true);

			// Set the content type we are POSTing. We impersonate it as 
			// encoded form data 
			conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			conn.setRequestProperty( "User-Agent", agent );

			//conn.setRequestProperty( "Content-Type", type );
			conn.setRequestProperty( "Content-Length", String.valueOf( encodedData.length()) );
			conn.setRequestMethod("POST");
			
	        // get the output stream to POST to. 
			DataOutputStream output = new DataOutputStream( conn.getOutputStream());
			output.writeBytes( encodedData );
			output.flush();
	        output.close ();
			
			// Read input from the input stream.
			DataInputStream  in = new DataInputStream (conn.getInputStream()); 
	    	int rc = conn.getResponseCode();
			if ( rc != -1)
			{
				BufferedReader is = new BufferedReader(new InputStreamReader( conn.getInputStream()));
				String _line = null;
				while(((_line = is.readLine()) !=null))
				{
					respText = respText + _line;
				}			
				nvp = deformatNVP( respText );
			}
			return nvp;
		}
		catch( IOException e )
		{
			// handle the error here
			return null;
		}
	}
	
	/*********************************************************************************
	  * deformatNVP: Function to break the NVP string into a HashMap
	  * 	pPayLoad is the NVP string.
	  * returns a HashMap object containing all the name value pairs of the string.
	*********************************************************************************/
	public HashMap deformatNVP( String pPayload )
	{
		HashMap nvp = new HashMap(); 
		StringTokenizer stTok = new StringTokenizer( pPayload, "&");
		while (stTok.hasMoreTokens())
		{
			StringTokenizer stInternalTokenizer = new StringTokenizer( stTok.nextToken(), "=");
			if (stInternalTokenizer.countTokens() == 2)
			{
				String key = URLDecoder.decode( stInternalTokenizer.nextToken());
				String value = URLDecoder.decode( stInternalTokenizer.nextToken());
				nvp.put( key.toUpperCase(), value );
			}
		}
		return nvp;
	}
	
	/*********************************************************************************
	  * RedirectURL: Function to redirect the user to the PayPal site
	  * 	token is the parameter that was returned by PayPal
	  * returns a HashMap object containing all the name value pairs of the string.
	*********************************************************************************/
	public void RedirectURL( String token, HttpServletResponse response )
	{
		String payPalURL = PAYPAL_URL + token; 
		
		//response.sendRedirect( payPalURL );
		response.setStatus(302);
		response.setHeader( "Location", payPalURL );
		response.setHeader( "Connection", "close" );
	}
	
%>
