<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IMC</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
  </head>
  <body>
	  <div class="jumbotron"> <!-- Destacar título -->
			<div class="container-fluid">
				<h1>IMC</h1>
				<form class="form-horizontal">
					<fieldset>
						<legend>Calculando IMC</legend> <!-- Form Name -->
						
						<!-- Text input-->
						<div class="control-group">
							<div class="controls">
								<input id="peso" name="peso" type="text" placeholder="Digite o peso" class="input-xlarge">
							</div>
						</div>

						<!-- Text input-->
						<div class="control-group">
							<div class="controls">
								<br>
								<input name="altura" type="text" placeholder="Digite a altura" class="input-xlarge">
							</div>
						</div>

						<!-- Button -->
						<div class="control-group">
							<div class="controls">
								<br>
								<button id="Calcular" name="calcular" class="btn btn-primary">Calcular</button>
								<button id="Limpar" name="limpar" class="btn btn-primary">Limpar</button>
							</div>
						</div>
					</fieldset>
				</form

			</div>
		</div>
		
		<%
			String pesoStr = request.getParameter("peso");
			pesoStr = pesoStr == null ? "0" : pesoStr;
			
			String alturaStr = request.getParameter("altura");
			alturaStr = alturaStr == null ? "0" : alturaStr;
			
			float peso1 = Float.valueOf(str).floatValue(pesoStr);
			float altura1 = Float.valueOf(str).floatValue(alturaStr);
			
			float calculo;
			
			String resultado = "";
			
			
			calculo = (peso1 / (altura1 * altura1));
			
			if (calculo < 17) {
				resultado = "Muito Abaixo do Peso";
			} else if (calculo >= 17 && < 18,49) {
				resultado = "Abaixo do Peso";
			} else if (calculo >= 18,49 && < 24,99) {
				resultado = "Peso Normal";
			} else if (calculo >= 24,99 && < 29,99) {
				resultado = "Acima do Peso";
			} else if (calculo >= 29,99 && < 34,99) {
				resultado = "Obesidade I";
			} else if (calculo >= 34,99 && < 39,99) {
				resultado = "Obesidade II (Severa)";
			} else if (calculo >= 39,99) {
				resultado = "Obesidade III (Mórbida)";
			}
		%>
		
		 <div class="alert alert-success" role="alert" style="margin-top:45px"><%=resultado%></div>
		
  </body>
</html>


