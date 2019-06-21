function postcode() {
	    new daum.Postcode({
		    oncomplete: function(data) {

    		    var fullAddr = '';
        		var extraAddr = '';

  	          if (data.userSelectedType === 'R') { 
   	             fullAddr = data.roadAddress;

 	           } else { 
		            fullAddr = data.jibunAddress;
  	  	    }

	 	       if(data.userSelectedType === 'R'){
    		        
     		   	    if(data.bname !== ''){
     		       	    extraAddr += data.bname;
       	    	 }
       	    	 
       	    	 if(data.buildingName !== ''){
          	 	     extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
          	 	 }
        	   	 
         	  	 fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
        		}

        		
        		document.getElementById('zip').value = data.zonecode;
   	 		    document.getElementById('addr1').value = fullAddr;

    		    
  	 	     document.getElementById('addr2').focus();
  	   }
	  }).open();
  }