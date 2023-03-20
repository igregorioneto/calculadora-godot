extends Node2D

var sequencia_numerica_1: String = ""
var sequencia_numerica_2: String = ""

var selecionado_tipo_do_calculo: bool = false
var qual_calculo_foi_selecionado: String = ""

func _on_zero_pressed():
	if selecionado_tipo_do_calculo == true:
		sequencia_numerica_2 = sequencia_numerica_2 + "0"
		$controle/resultado.text = $controle/resultado.text + "0"
	else:
		sequencia_numerica_1 = sequencia_numerica_1 + "0"
		$controle/resultado.text = sequencia_numerica_1

func _on_um_pressed():
	if selecionado_tipo_do_calculo == true:
		sequencia_numerica_2 += "1"
		$controle/resultado.text = $controle/resultado.text + "1"
	else:
		sequencia_numerica_1 += "1"
		$controle/resultado.text = sequencia_numerica_1

func _on_dois_pressed():
	if selecionado_tipo_do_calculo == true:
		sequencia_numerica_2 += "2"
		$controle/resultado.text = $controle/resultado.text + "2"
	else:
		sequencia_numerica_1 += "2"
		$controle/resultado.text = sequencia_numerica_1

func _on_tres_pressed():
	if selecionado_tipo_do_calculo == true:
		sequencia_numerica_2 += "3"
		$controle/resultado.text = $controle/resultado.text + "3"
	else:
		sequencia_numerica_1 += "3"
		$controle/resultado.text = sequencia_numerica_1

func _on_quatro_pressed():
	if selecionado_tipo_do_calculo == true:
		sequencia_numerica_2 += "4"
		$controle/resultado.text = $controle/resultado.text + "4"
	else:
		sequencia_numerica_1 += "4"
		$controle/resultado.text = sequencia_numerica_1

func _on_cinco_pressed():
	if selecionado_tipo_do_calculo == true:
		sequencia_numerica_2 += "5"
		$controle/resultado.text = $controle/resultado.text + "5"
	else:
		sequencia_numerica_1 += "5"
		$controle/resultado.text = sequencia_numerica_1
	
func _on_seis_pressed():
	if selecionado_tipo_do_calculo == true:
		sequencia_numerica_2 += "6"
		$controle/resultado.text = $controle/resultado.text + "6"
	else:
		sequencia_numerica_1 += "6"
		$controle/resultado.text = sequencia_numerica_1

func _on_sete_pressed():
	if selecionado_tipo_do_calculo == true:
		sequencia_numerica_2 += "7"
		$controle/resultado.text = $controle/resultado.text + "7"
	else:
		sequencia_numerica_1 += "7"
		$controle/resultado.text = sequencia_numerica_1

func _on_oito_pressed():
	if selecionado_tipo_do_calculo == true:
		sequencia_numerica_2 += "8"
		$controle/resultado.text = $controle/resultado.text + "8"
	else:
		sequencia_numerica_1 += "8"
		$controle/resultado.text = sequencia_numerica_1

func _on_nove_pressed():
	if selecionado_tipo_do_calculo == true:
		sequencia_numerica_2 += "9"
		$controle/resultado.text = $controle/resultado.text + "9"
	else:
		sequencia_numerica_1 += "9"
		$controle/resultado.text = sequencia_numerica_1

func _on_ponto_pressed():
	if selecionado_tipo_do_calculo == true:
		sequencia_numerica_2 += "."
		$controle/resultado.text = $controle/resultado.text + "."
	else:
		sequencia_numerica_1 += "."
		$controle/resultado.text = sequencia_numerica_1

func _on_limpar_tela_pressed():
	sequencia_numerica_1 = ""
	sequencia_numerica_2 = ""
	qual_calculo_foi_selecionado = ""
	selecionado_tipo_do_calculo = false
	$controle/resultado.text = ""

func _on_menor_que_pressed():
	selecionado_tipo_do_calculo = true
	$controle/resultado.text = sequencia_numerica_1 + " < "
	qual_calculo_foi_selecionado = "menor_que"

func _on_divisao_pressed():
	selecionado_tipo_do_calculo = true
	$controle/resultado.text = sequencia_numerica_1 + " / "
	qual_calculo_foi_selecionado = "divisao"

func _on_soma_pressed():
	selecionado_tipo_do_calculo = true
	$controle/resultado.text = sequencia_numerica_1 + " + "
	qual_calculo_foi_selecionado = "soma"

func _on_subtracao_pressed():
	selecionado_tipo_do_calculo = true
	$controle/resultado.text = sequencia_numerica_1 + " - "
	qual_calculo_foi_selecionado = "subtracao"

func _on_multiplicacao_pressed():
	selecionado_tipo_do_calculo = true
	$controle/resultado.text = sequencia_numerica_1 + " * "
	qual_calculo_foi_selecionado = "multiplicacao"

func _on_igual_pressed():
	var calculo: float = 0
	if qual_calculo_foi_selecionado == "soma":
		calculo = float(sequencia_numerica_1) + float(sequencia_numerica_2)
		$controle/resultado.text = str(calculo)
	elif qual_calculo_foi_selecionado == "subtracao":
		calculo = float(sequencia_numerica_1) - float(sequencia_numerica_2)
		$controle/resultado.text = str(calculo)
	elif qual_calculo_foi_selecionado == "multiplicacao":
		calculo = float(sequencia_numerica_1) * float(sequencia_numerica_2)
		$controle/resultado.text = str(calculo)
	elif qual_calculo_foi_selecionado == "divisao":
		calculo = float(sequencia_numerica_1) / float(sequencia_numerica_2)
		$controle/resultado.text = str(calculo)
	elif qual_calculo_foi_selecionado == "menor_que":
		calculo = float(sequencia_numerica_1) < float(sequencia_numerica_2)
		if calculo == 0:
			$controle/resultado.text = "Falso"
		else:
			$controle/resultado.text = "Verdadeiro"
		
