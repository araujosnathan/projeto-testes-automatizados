require 'calabash-android/abase'

class Anotacao < Calabash::ABase


  def btn_adicionar;            'fab'                             end
  def nome_anotacao;            'dialog_input'                    end
  def btn_criar;                'Create'                          end
  def titulo;                   'fragment_note_title'             end
  def tags;                     'fragment_note_tags'              end
  def hora_agendada;            'fragment_note_scheduled_button'  end
  def confirmar_tempo;          'Set'                             end
  def limite_tempo;             'fragment_note_deadline_button'   end
  def adicionar_propriedade;    'add_property'                    end
  def nome_propriedade;         'name'                            end
  def valor_propriedade;        'value'                           end
  def btn_finalizar;            'done'                            end
  def cabelho_titulo;           'item_head_title'                 end

  def adicionar_anotacao
    sleep(2)
    wait_for_element_exists "* marked:'#{btn_adicionar}'"
    touch "* marked:'#{btn_adicionar}'"
  end

  def inserir_nome(nome)
    touch "* marked:'#{nome_anotacao}'"
    keyboard_enter_text nome
  end

  def criar_anotacao
    touch "* marked:'#{btn_criar}'"
  end

  def anotacao_criada?(nome)
    if element_exists "* marked:'#{nome}'"
      true
    else
      false
    end
  end

  def tocar_anotacao(nome)
    touch "* marked:'#{nome}'"
  end

  def inserir_titulo(novo_titulo)
    touch "* marked:'#{titulo}'"
    keyboard_enter_text novo_titulo
    hide_soft_keyboard unless !keyboard_visible?
  end

  def inserir_tag(tag)
    touch "* marked:'#{tags}'"
    keyboard_enter_text tag
    hide_soft_keyboard unless !keyboard_visible?
  end

  def adicionar_hora_agendada
    touch "* marked:'#{hora_agendada}'"
    touch "* marked:'#{confirmar_tempo}'"
  end

  def adicionar_limite_tempo
    touch "* marked:'#{limite_tempo}'"
    touch "* marked:'#{confirmar_tempo}'"
  end

  def inserir_propriedade(nome, valor)
    touch "* marked:'#{adicionar_propriedade}'"
    touch "* marked:'#{nome_propriedade}'"
    keyboard_enter_text nome
    touch "* marked:'#{valor_propriedade}'"
    keyboard_enter_text valor
    hide_soft_keyboard unless !keyboard_visible?
  end

  def finalizar_edicao
    touch "* marked:'#{btn_finalizar}'"
  end

  def verificar_edicao(titulo, tag)
    wait_for_element_exists "* marked:'#{cabelho_titulo}'"
    cabecalho_anotacao = query("* marked:'#{cabelho_titulo}'", :text).first
    if !cabecalho_anotacao.include? titulo and !cabecalho_anotacao.include? tag
      fail "Edição não foi realizada! Título e Tag não foram adicionados! Informação mostrada: #{cabecalho_anotacao}"
    end
  end

end
