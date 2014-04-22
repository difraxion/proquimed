<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dead extends CI_Controller {
	public function __construct()
	{
		parent:: __construct ();
	}

	public function index()
	{
		$data['title']= "404 Page Not Found";
		$this->parser->parse('404', $data);
	}	
}

