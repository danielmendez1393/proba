			<?php  
				require_once($CONFIG['pathinclude']."config/cx.php");
				require_once($CONFIG['pathinclude']."cls/pleno.php");
				$objCnv = new convocatorias;
				$Lectura = $objCnv->read();
				//echo "<pre>".print_r($dato,1)."</pre>";
				//$delete = $objUser->Borrar_datos()
			 ?>
			 <script type="text/javascript">
			 	function editarnota(cnv_id){
			 		
			 		frmEditNts.elements['cnv_id'].value = cnv_id;					
					frmEditNts.submit();
			 	}

			 	function Borrar(cnv_id){
			 		frmdel.elements['cnv_id'].value = cnv_id;					
					frmdel.submit();
			 	}
			 </script>
			 <div class="table-responsive" >
			  <table class="table table-striped table-bordered table-hover table-condensed">
			    <thead>
			      <tr style="background: #737677;">
			        <th>ID</th>
			        <th>TIPO</th>
			        <th>ARCHIVO</th>
			        <th>FECHA</th>		        
			        <th></th>
			        <th></th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			      <?php 
			      	foreach ($Lectura as $row => $dato) {
			      		
			      		?> 
			      			
			      			<?php 
			      				//foreach ($row as $dato) {
			      			?>
			      			<!--<td><?=$dato?></td>-->

			      			<td><?=$dato['cnv_id']?></td>
							<td><?=$dato['cnv_tipo']?></td>
				      		<td><?=$dato['cnv_archivo']?></td>
				      		<td><?=$dato['cnv_fecha']?></td>
				      		
			      			<?php		
			      			//	}
			      			 ?>
			      			<td style="text-align: center;" >
			      				
			      				<div type="submit" class="btn-custom btn-mini border-btn "  align="center" style="text-align: center;" >
                                        <a href="#" onclick="javascript:editarnota('<?=$dato["cnv_id"]?>');">
			      							<i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i>
			      						</a>
                                               <!--  <a type="submit" class="btn-custom btn-mini border-btn btn-gray"  href="javascript: form_login.submit();"><i class="fa fa-sign-in"></i> Ingresar</a>-->
                                </div>
			      			</td>

			      			<td style="text-align: center;" >
			      				<div type="submit" class="btn-custom btn-mini border-btn "  align="center" style="text-align: center;" >
			      						<a href="#" onclick="javascript:Borrar('<?=$dato["cnv_id"]?>');">
			      							<i class="fa fa-trash fa-2x" aria-hidden="true"></i>
			      						</a>
                                               <!--  <a type="submit" class="btn-custom btn-mini border-btn btn-gray"  href="javascript: form_login.submit();"><i class="fa fa-sign-in"></i> Ingresar</a>-->
                                </div>
			      				
							</td>
			      		</tr>
			      	<?php 
			      	}
			      ?>
			        
			      </tr>
			    </tbody>
			  </table>
			  </div>
			  <form name="frmdel" action="<?=$CONFIG['pathpln']?>relacion/Cnvborrar.php" target="deletenota"  method="post">
			  <input type="hidden" name="cnv_id">
			  </form>

			  <form  name="frmEditNts" action="paneladm.php?p=pleno&j=convocatorias&crud=update" method="post" > 
			  <input type="hidden" name="cnv_id">
			  </form>
			  <iframe name="deletenota"  height="0" width="0"  ></iframe>