<article class="content content-atendemos">
	<div class="wrapper">
		<h1 class="titulo-footer">ATENDEMOS A:</h1>
	</div>
</article>
<article class="content aseguradoras">
	<div class="wrapper">
			<?php			
				for ($i=1; $i < 8; $i++) { 
					$string = '<figure class="display-inline logos-aseguradora"><img src="{DIR}img/home/images/logo-'.$i.'.jpg"></figure>';
					echo $string;
				}
				for ($i=8; $i < 17; $i++) { 
					$string = '<figure class="display-inline"><img src="{DIR}img/home/images/logo-'.$i.'.jpg"></figure>';
					echo $string;
				}			
			?>
	</div>
</article>
<article class="content certificaciones">
	<div class="wrapper">
		<figure class="display-inline "><img src="{DIR}img/home/images/logo2-1.jpg"></figure>
		<figure class="display-inline "><img src="{DIR}img/home/images/logo2-2.jpg"></figure>
		<figure class="display-inline "><img src="{DIR}img/home/images/logo2-3.jpg"></figure>
	</div>
</article>
<article class="content footer-content" >
	<div class="wrapper">
		<div class="box-footer">
			<h3>LOS SERVICIOS MAS BUSCADOS</h3>
			<ul>
				<li>Biometría hemática</li>
				<li>Examen general de orina</li>
				<li>Hemoglobina glucosilada (hb-a1c)</li>
				<li>Química sanguínea de 27 elementos</li>
			</ul>
		</div>
		<div class="box-footer">
			<h3>SUCURSALES</h3>
			<ul>
				<li>León</li>
				<li>Guanajuato</li>
				<li>Romita</li>
				<li>Silao</li>
			</ul>
		</div>
		<div class="box-footer">
			<h3>ESTAMOS PARA ATENDERTE</h3>
			<fieldset>
				<form action="" method="get" accept-charset="utf-8">
					<label for="">NOMBRE:</label>
					<input type="text" name="nombre" value="" placeholder="">
					<label for="">MENSAJE:</label>
					<textarea name="mensaje"></textarea>
					<input type="button" name="enviar" value="ENVIAR">
				</form>
			</fieldset>
		</div>
		<div class="box-footer">
			<h3>SÍGUENOS</h3>
			<span class="redes face-footer"></span>
			<span class="redes twitter-footer"></span>
		</div>
	</div>
</article>
<article class="content">
	<div class="wrapper"></div>
</article>