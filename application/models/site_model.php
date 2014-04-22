<?php

class Site_model extends CI_Model {
	function getsitename()
	{
		$this->db->select('nombre_sitio');
		$query = $this->db->get('datos_generales');
		$row = $query->row();
		if($row->nombre_sitio)
			return $row->nombre_sitio;
		else
			return 'tmp2.0';
	}
	function gettituloprincipal()
	{
		$this->db->select('titulo_principal');
		$query = $this->db->get('datos_generales');
		$row = $query->row();
		if($row->titulo_principal)
			return $row->titulo_principal;
		else
			return 'Template 2.0';
	}
	function gettitutlo($s='')
	{
		$this->db->select('titulo');
		$this->db->where('nombre', $s);
		$query = $this->db->get('secciones');
		$row = $query->row();
		if($row)
			return $this->gettituloprincipal().' - '.$row->titulo;
		else
			return 'Template 2.0';
	}
	function getdescripcion()
	{
		$this->db->select('descripcion');
		$query = $this->db->get('datos_generales');
		$row = $query->row();
		if($row->descripcion)
			return $row->descripcion;
		else
			return '';
	}
	function getkeywords()
	{
		$this->db->select('palabras_claves');
		$query = $this->db->get('datos_generales');
		$row = $query->row();
		if($row->palabras_claves)
			return $row->palabras_claves;
		else
			return '';
	}
	function getanalytics()
	{
		$this->db->select('analytics');
		$query = $this->db->get('datos_generales');
		$row = $query->row();
		if($row->analytics)
			return $row->analytics;
		else
			return '';
	}
	function getfavicon()
	{
		$this->db->select('favicon');
		$query = $this->db->get('datos_generales');
		$row = $query->row();
		if($row->favicon)
			return $row->favicon;
		else
			return 'favicon.ico';
	}
	function getimagesite()
	{
		$this->db->select('image_site');
		$query = $this->db->get('datos_generales');
		$row = $query->row();
		if($row->image_site)
			return $row->image_site;
		else
			return '';
	}
}