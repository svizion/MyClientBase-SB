<?php 
	$this->load->view('dashboard/header');
	
?>
<?php 
	echo $js_autofocus; 
	
?>

<div class="grid_14" id="content_wrapper">

<div class="section_wrapper">

<?php 
	$this->load->view('dashboard/system_messages');
     
	echo $middle; 
?>
        
    </div>

</div>

<?php $this->load->view('dashboard/footer'); ?>