// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {

	    //When page loads...
		$(".tab_content").hide(); //Hide all content
		$("ul.tabs li:first").addClass("active").show(); //Activate first tab
		$(".tab_content:first").show(); //Show first tab content
		
	
	
		//On Click Event
		$("ul.tabs li").click(function() {
	
			$("ul.tabs li").removeClass("active"); //Remove any "active" class
			$(this).addClass("active"); //Add "active" class to selected tab
			$(".tab_content").hide(); //Hide all tab content
	
			var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
			$(activeTab).fadeIn(); //Fade in the active ID content
			return false;
		});
		
			//date pickers for date fields
		$("#project_contract_start").datepicker();
		$("#project_contract_end").datepicker();
		$("#project_start_date").datepicker();
		$("#project_end_date").datepicker();
		$("#project_qa_date").datepicker();
	
	$(function () {  
		  // Sorting and pagination links.  
		  $('#projects_table th a, #projects_table .pagination a').live('click',   
		    function () {  
		      $.getScript(this.href);  
		      return false;  
		    }  
		);  
		   
		  // Search form. Calls search function via JavaScript 
		  $('#search_bar').submit(function () {  
		    $.get(this.action, $(this).serialize(), null, 'script');  
		    return false;  
		  });  
		 
		  
	}); 
 });