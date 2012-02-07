<script type="text/javascript">
    $(document).ready(function() {
        //when the button is clicked the form is retrieved and sent to ajax
        jQuery("#save_location_aliases").click(function() {
    		form = document.forms['save_location_aliases'];

            url = "/index.php/contact/update_settings/";
            dataType = "html";    	
    		type = 'POST';
    		action = 'location_aliases';
    		dataObj = retrieveForm(form);    		
        	sendForm(url,dataType,type,action,dataObj);        	
        });
    });
</script>
   
<p style="background-color: #fffdd0; border: 1px dotted gray;">{t}For each attribute you can specify an alias that will replace the attribute name in the contact's details and form{/t}.</p>
<form name="save_location_aliases">
	{foreach $location_visible_attributes as $key => $attribute_name}
		<dl id="LocationVisibleAttributes_{$attribute_name}" style="margin-top: 3px; padding-bottom: 1px; margin-bottom: 5px; margin-left: 3px; margin-right: 3px; background-color: #FFF; border: 1px solid #e8e8e8;">
			{if $location_all_attributes[$attribute_name]['required'] == 1}
				{$color="red"}
			{else}
				{$color="black"}
			{/if}
			
			<dt style="margin-bottom: 4px; margin-left: 5px; text-align: left; color:{$color}; width: 35%;"><b>{$attribute_name}</b></dt>
			<dd>
				{$attr_alias = ""}
				{if isset($location_aliases) and isset($attribute_name) and isset($location_aliases.$attribute_name)}
					{$attr_alias = $location_aliases[$attribute_name]}
				{/if}	
				{t}Alias{/t}: <input type="text" name="{$attribute_name}" id="{$attribute_name}" value="{$attr_alias}"/>
				<br/>
				<span style="margin-bottom: 0px; margin-left: 10px; text-align: left;"><i>
				{if $location_all_attributes[$attribute_name]['desc'] != ""}
					{t}{$location_all_attributes[$attribute_name]['desc']}{/t}
				{else}
					{t}No description available{/t}.
				{/if}
				</i></span>
			</dd>
		</dl>
	{/foreach}
	<input type="button" id="save_location_aliases" class="mcbsb-regular-Button" style="float: right;" value="{t}Save aliases{/t}"/>		 
</form>       
  