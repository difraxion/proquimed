<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Home extends CI_Controller {
	public function __construct()
	{
		parent:: __construct ();
	}

	public function index($s='inicio', $c='')
	{
		$data['DIR'] = base_url();
		view_section($s, $c, $data);
	}
}

