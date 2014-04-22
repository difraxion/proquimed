<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('site'))
{
	function view_section($s='', $c='', $data_objects)
	{
		$section = ($c!=''?$c.'/'.$s:$s);
		$CI = get_instance();
		$data['DIR'] = base_url();
		$data['META'] = $CI->site_model->getdescripcion();
		$data['TITLE'] = $CI->site_model->gettitutlo($s);
		$data['MAIN_TITLE'] = $CI->site_model->gettituloprincipal();
		$data['SITE'] = $CI->site_model->getsitename();
		$data['IMAGE_SITE'] = $CI->site_model->getimagesite();
		$data['KEYWORDS'] = $CI->site_model->getkeywords();
		$data['FAVICON'] = $CI->site_model->getfavicon();
		$data['ANALYTICS'] = $CI->site_model->getanalytics();
		$data['CONTENT'] = $CI->parser->parse($section, $data_objects, true);
		$data['MENU'] = menu($s);

		$CI->parser->parse('site', $data);
	}
	function menu($s) {
		$menu =  '<li class="display-inline"><a href="'.base_url().'conocenos" class="'.($s=='conocenos'? ' activate':'').'">CONÓCENOS</a></li>';
		$menu .= '<li class="display-inline"><a href="'.base_url().'personas" class="'.($s=='personas'? ' activate':'').'">PERSONAS</a></li>';
		$menu .= '<li class="display-inline"><a href="'.base_url().'empresas" class="'.($s=='empresas'? ' activate':'').'">EMPRESAS</a></li>';
		$menu .= '<li class="display-inline"><a href="'.base_url().'alianzas" class="'.($s=='alianzas'? ' activate':'').'">ALIANZAS</a></li>';
		$menu .= '<li class="display-inline"><a href="'.base_url().'medicos" class="'.($s=='medicos'? ' activate':'').'">MÉDICOS</a></li>';
		$menu .= '<li class="display-inline"><a href="'.base_url().'promociones" class="'.($s=='promociones'? ' activate':'').'">PROMOCIONES</a></li>';
		$menu .= '<li class="display-inline"><a href="'.base_url().'ubicanos" class="'.($s=='ubicanos'? ' activate':'').'">UBÍCANOS</a></li>';
		$menu .= '<li class="display-inline"><a href="'.base_url().'blog" class="'.($s=='blog'? ' activate':'').'">BLOG</a></li>';
		$menu .= '<li class="display-inline"><a href="'.base_url().'privacidad" class="'.($s=='privacidad'? ' activate':'').'">AVISO DE PRIVACIDAD</a></li>';
		return $menu; 
	
	}
}