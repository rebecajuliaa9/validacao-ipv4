
.section .data    # SECAO DE DADOS
  entrada:            # Variavel entrada
    .ascii "...."
  
 ip_valido:
    .ascii "Esse ip é valido\n"
  final_ip_valido:
    .equ tamanho_ip_valido, final_ip_valido - ip_valido

  ip_nao_valido:
    .ascii "Esse ip nao e valido\n"
  final_ip_nao_valido:
    .equ tamanho_ip_nao_valido, final_ip_nao_valido - ip_nao_valido

.section .text    # INCIANDO SECAO DE TEXTO(codigo)
  .globl _start   # DECLARANDO FUNCAO PRINCIPAL
    _start:       # INICIANDO A FUNCAO PRINCIPAL
      
      xor %rax, %rax	# Zerando registrador RAX
      xor %rbx, %rbx	# Zerando registrador RBX
      xor %rcx, %rcx	# Zerando registrador RCX
      xor %rdx, %rdx 	# Zerando registrador RDX
      xor %rdi, %rdi 	# Zerando registrador RDI

      movl $entrada, %eax	    # EDI = endereco do vetor

      jmp validacao_primeiro_octeto_primeiro_caracter   # Salto para Label validacao_primeiro_octeto_primeiro_caracter

    #valida o primeiro caracter do primeiro grupo
    validacao_primeiro_octeto_primeiro_caracter:	# LABEL validacao_primeiro_octeto_primeiro_caracter
      cmpb $48, (%eax)	# Comparando o primeiro caracter do primeiro grupo com o valor 48
      je validacao_primeiro_octeto_segundo_caracter_zero_um	# Se for maior ou igual, salta para o Label primeiro_grupo_segundo_caracter
      cmpb $49, (%eax)	# Comparando o primeiro caracter do primeiro grupo com o valor 49
      je validacao_primeiro_octeto_segundo_caracter_zero_um	# Se for maior ou igual, salta para o Label primeiro_grupo_segundo_caracter
      cmpb $50, (%eax)	# Comparando o primeiro caracter do primeiro grupo com o valor 50
      je validacao_primeiro_octeto_segundo_caracter_dois	# Se for maior ou igual, salta para o Label primeiro_grupo_segundo_caracter

      jmp invalido

    # valida o segundo caracter do primeiro grupo
    validacao_primeiro_octeto_segundo_caracter_zero_um:
      cmpb $48, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 48
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $49, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 49
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $50, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 50
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $51, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 51
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $52, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 52
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $53, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 53
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $54, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 54
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $55, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 55
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $56, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 56
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $57, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 57
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove

      jmp invalido

    # valida o terceiro caracter do primeiro grupo
    validacao_primeiro_octeto_terceiro_caracter_zero_nove:
      cmpb $48, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 48
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $49, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 49
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $50, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 50
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $51, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 51
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $52, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 52
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $53, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 53
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $54, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 54
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $55, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 55
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $56, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 56
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $57, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 57
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      
      jmp invalido

    # valida o segundo caracter do primeiro grupo
    validacao_primeiro_octeto_segundo_caracter_dois:
      cmpb $48, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 48
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $49, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 49
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $50, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 50
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $51, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 51
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $52, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 5
      je validacao_primeiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      cmpb $53, 1(%eax)	# Comparando o segundo caracter do primeiro grupo com o valor 53
      je validacao_primeiro_octeto_terceiro_caracter_zero_cinco	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_terceiro_caracter_zero_nove
      
      jmp invalido

    #valida o terceiro caracter do primeiro grupo
    validacao_primeiro_octeto_terceiro_caracter_zero_cinco:
      cmpb $48, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 48
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $49, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 49
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $50, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 50
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $51, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 51
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $52, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 52
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      cmpb $53, 2(%eax)	# Comparando o terceiro caracter do primeiro grupo com o valor 53
      je validacao_primeiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_primeiro_octeto_quarto_caracter_zero_nove
      jmp invalido

    #valida o ponto do primeiro grupo
    validacao_primeiro_octeto_quarto_caracter_ponto:
      cmpb $46, 3(%eax)	# Comparando o quarto caracter do primeiro grupo com o valor 46
      je validacao_segundo_octeto_primeiro_caracter	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_primeiro_caracter
      
      jmp invalido
    
    #valida o primeiro caracter do segundo grupo
    validacao_segundo_octeto_primeiro_caracter:
      cmpb $48, 4(%eax)	# Comparando o primeiro caracter do segundo grupo com o valor 48
      je validacao_segundo_octeto_segundo_caracter_zero_um	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_segundo_caracter_zero_um
      cmpb $49, 4(%eax)	# Comparando o primeiro caracter do segundo grupo com o valor 49
      je validacao_segundo_octeto_segundo_caracter_zero_um	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_segundo_caracter_zero_um
      cmpb $50, 4(%eax)	# Comparando o primeiro caracter do segundo grupo com o valor 50
      je validacao_segundo_octeto_segundo_caracter_dois	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_segundo_caracter_dois
      
      jmp invalido
    
    #valida o segundo caracter do segundo grupo
    validacao_segundo_octeto_segundo_caracter_zero_um:
      cmpb $48, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 48
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $49, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 49
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $50, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 50
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $51, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 51
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $52, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 52
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $53, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 53
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $54, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 54
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $55, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 55
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $56, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 56
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $57, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 57
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      
      jmp invalido

    #valida o terceiro caracter do segundo grupo
    validacao_segundo_octeto_terceiro_caracter_zero_nove:
      cmpb $48, 6(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 48
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmpb $49, 6(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 49
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmpb $50, 6(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 50
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmpb $51, 6(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 51
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmpb $52, 6(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 52
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmpb $53, 6(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 53
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmpb $54, 6(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 54
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmp $55, 6(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 55
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmpb $56, 6(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 56
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmpb $57, 6(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 57
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      
      jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    #valida o quarto caracter do segundo grupo
    validacao_segundo_octeto_segundo_caracter_dois:
      cmpb $48, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 48
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $49, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 49
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $50, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 50
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $51, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 51
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $52, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 52
      je validacao_segundo_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      cmpb $53, 5(%eax)	# Comparando o segundo caracter do segundo grupo com o valor 53
      je validacao_segundo_octeto_terceiro_caracter_zero_cinco	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_terceiro_caracter_zero_nove
      
      jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    validacao_segundo_octeto_terceiro_caracter_zero_cinco:
      cmpb $48, 4(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 48
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmpb $49, 4(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 49
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmpb $50, 4(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 50
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmpb $51, 4(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 51
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmpb $52, 4(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 52
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      cmpb $53, 4(%eax)	# Comparando o terceiro caracter do segundo grupo com o valor 53
      je validacao_segundo_octeto_oitavo_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_segundo_octeto_oitavo_caracter_ponto
      
      jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    #valida o quarto caracter do segundo grupo, o ponto
    validacao_segundo_octeto_oitavo_caracter_ponto:
      cmpb $46, 7(%eax)	# Comparando o oitavo caracter do segundo grupo com o valor 46
      je valida_terceiro_octeto_primeiro_caracter	# Se for maior ou igual, salta para o Label valida_terceiro_octeto_primeiro_caracter
      jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    #valida o primeiro caracter do terceiro grupo
    valida_terceiro_octeto_primeiro_caracter:
      cmpb $48, 8(%eax)	# Comparando o primeiro caracter do terceiro grupo com o valor 48
      je validacao_terceiro_octeto_segundo_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_segundo_caracter_zero_nove
      cmpb $49, 8(%eax)	# Comparando o primeiro caracter do terceiro grupo com o valor 49
      je validacao_terceiro_octeto_segundo_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_segundo_caracter_zero_nove
      cmpb $50, 8(%eax)	# Comparando o primeiro caracter do terceiro grupo com o valor 50
      je validacao_terceiro_octeto_segundo_caracter_zero_cinco	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_segundo_caracter_zero_nove
      
      jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    #valida o segundo caracter do terceiro grupo
    validacao_terceiro_octeto_segundo_caracter_zero_nove:
    cmpb $48, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 48
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $49, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 49
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $50, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 50
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $51, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 51
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $52, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 52
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $53, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 53
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $54, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 54
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $55, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 55
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $56, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 56
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $57, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 57
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove

    jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    #valida o terceiro caracter do terceiro grupo
    validacao_terceiro_octeto_terceiro_caracter_zero_nove:
    cmpb $48, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 48
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_pontoto
    cmpb $49, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 49
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    cmpb $50, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 50
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    cmpb $51, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 51
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    cmpb $52, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 52
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    cmpb $53, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 53
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    cmpb $54, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 54
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    cmpb $55, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 55
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    cmpb $56, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 56
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    cmpb $57, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 57
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    
    jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    #valida o segundo caracter do terceiro grupo    
    validacao_terceiro_octeto_segundo_caracter_zero_cinco:
    cmpb $48, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 48
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $49, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 49
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $50, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 50
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $51, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 51
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $52, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 52
    je validacao_terceiro_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_nove
    cmpb $53, 9(%eax)	# Comparando o segundo caracter do terceiro grupo com o valor 53
    je validacao_terceiro_octeto_terceiro_caracter_zero_cinco	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_terceiro_caracter_zero_cinco
    
    jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    validacao_terceiro_octeto_terceiro_caracter_zero_cinco:
    cmpb $48, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 48
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    cmpb $49, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 49
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    cmpb $50, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 50
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    cmpb $51, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 51
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    cmpb $52, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 52
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto
    cmpb $53, 10(%eax)	# Comparando o terceiro caracter do terceiro grupo com o valor 53
    je validacao_terceiro_octeto_quarto_caracter_ponto	# Se for maior ou igual, salta para o Label validacao_terceiro_octeto_quarto_caracter_ponto

    jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa
    
    validacao_terceiro_octeto_quarto_caracter_ponto:
    cmpb $46, 11(%eax)	# Comparando o quarto caracter do terceiro grupo com o valor 46
    je validacao_quarto_octeto_primeiro_caracter	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_primeiro_caracter_zero_nove
    
    jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    validacao_quarto_octeto_primeiro_caracter:
    cmpb $48, 12(%eax)	# Comparando o primeiro caracter do quarto grupo com o valor 48
    je validacao_quarto_octeto_segundo_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_segundo_caracter_zero_nove
    cmpb $49, 12(%eax)	# Comparando o primeiro caracter do quarto grupo com o valor 49
    je validacao_quarto_octeto_segundo_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_segundo_caracter_zero_nove
    cmpb $50, 12(%eax)	# Comparando o primeiro caracter do quarto grupo com o valor 50
    je validacao_quarto_octeto_segundo_caracter	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_segundo_caracter

    jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    validacao_quarto_octeto_segundo_caracter_zero_nove:
    cmpb $48, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 48
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $49, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 49
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $50, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 50
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $51, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 51
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $52, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 52
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $53, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 53
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $54, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 54
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $55, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 55
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $56, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 56
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $57, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 57
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove

    jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    validacao_quarto_octeto_terceiro_caracter_zero_nove:
    cmpb $48, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 48
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $49, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 49
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $50, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 50
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $51, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 51
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $52, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 52
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $53, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 53
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $54, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 54
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $55, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 55
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $56, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 56
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $57, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 57
    je valido	# Se for maior ou igual, salta para o Label valido

    jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    validacao_quarto_octeto_segundo_caracter:
    cmpb $48, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 48
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $49, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 49
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $50, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 50
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $51, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 51
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $52, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 52
    je validacao_quarto_octeto_terceiro_caracter_zero_nove	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_nove
    cmpb $53, 13(%eax)	# Comparando o segundo caracter do quarto grupo com o valor 53
    je validacao_quarto_octeto_terceiro_caracter_zero_cinco	# Se for maior ou igual, salta para o Label validacao_quarto_octeto_terceiro_caracter_zero_cinco

    jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    validacao_quarto_octeto_terceiro_caracter_zero_cinco:
    cmpb $48, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 48
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $49, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 49
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $50, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 50
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $51, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 51
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $52, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 52
    je valido	# Se for maior ou igual, salta para o Label valido
    cmpb $53, 14(%eax)	# Comparando o terceiro caracter do quarto grupo com o valor 53
    je valido	# Se for maior ou igual, salta para o Label valido

    jmp invalido # Se nao for nenhum dos valores acima, finaliza o programa

    valido:
      movl $4, %eax
      movl $1, %ebx
      movl $ip_valido, %ecx
      movl $tamanho_ip_valido, %edx
      int $0x80
      call fim

    invalido:
	    movl $4, %eax
      movl $1, %ebx
      movl $ip_nao_valido, %ecx
      movl $tamanho_ip_nao_valido, %edx
      int $0x80
      call fim
    
    fim:	# LABEL QUE FINALIZA O PROGRAMA
      movl $0, %ebx # Movendo o zero(Saida sem erro) pra EBX
      movl $1, %eax	# Movendo o numero do syscall exit(1) pra EAX
      int $0x80	    # Executa as instrucoes da syscall acima
