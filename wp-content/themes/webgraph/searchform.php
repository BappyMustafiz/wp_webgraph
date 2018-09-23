<form action="<?php echo home_url('/');?>" method="GET">
	<div class="input-group">
		<input class="form-control py-2 border-right-0 border" type="search" placeholder="<?php echo esc_attr_x('Search....', 'placeholder', 'webgraph');?>" id="example-search-input" name="s" value="<?php echo get_search_query();?>">
		<span class="input-group-append">
		    <button class="btn btn-outline-secondary border-left-0 border" type="submit">
		        <i class="fa fa-search"></i>
		    </button>
		 </span>
	</div>
</form>