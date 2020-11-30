<?php  
class ControllerExtensionModuleMycategoryhome extends Controller {
	
	public function index($setting) {
		$this->language->load('extension/module/mycategoryhome');
		
    	$data['heading_title'] = $this->language->get('heading_title');
		$data['all'] = $this->language->get('all');
		
		$this->load->model('catalog/category');
		$this->load->model('tool/image');
		$this->load->model('setting/setting');

		$theme = $this->model_setting_setting->getSetting('theme_default');

		if (file_exists('catalog/view/theme/' . $theme['theme_default_directory'] . '/stylesheet/mycategoryhome.css')) {
			$this->document->addStyle('catalog/view/theme/' . $theme['theme_default_directory'] . '/stylesheet/mycategoryhome.css');
		} else {
			$this->document->addStyle('catalog/view/theme/default/stylesheet/mycategoryhome.css');
		}
		
		$mysetting = $this->config->get('mycategoryhome_setting');	
			
		$mycategories = $mysetting['selected'];
		
		foreach ($mycategories as $cat_id) {
			$category = $this->model_catalog_category->getCategory($cat_id);
			
			if ($mysetting['chicati']) {
				$chcategories = $this->model_catalog_category->getCategories($cat_id);

				if (!empty($chcategories)) {
					foreach ($chcategories as $childrens) {
						$childrens = $this->model_catalog_category->getCategories($category['category_id']);
						$children_data = array();
						
						foreach ($childrens as $child) {
							$children_data[] = array(
								'category_id' => $child['category_id'],
								'name'        => $child['name'] ,
								'href'        => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
							);
						} 
					}
				} else {
					$children_data = false;
				}
			}

				$data['categories'][] = array(
					'category_id' => $category['category_id'],
					'name'        => $category['name'] ,
					'children'    => (isset($children_data) ? $children_data : false),
					'image'=> (($category['image']) ? $this->model_tool_image->resize($category['image'], $mysetting['size_w'], $mysetting['size_h']) : $this->model_tool_image->resize('no_image.png', $mysetting['size_w'], $mysetting['size_h']) ),
					'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
		}
		
		
		return $this->load->view('extension/module/mycategoryhome', $data);
		
  	}
	
		
}
