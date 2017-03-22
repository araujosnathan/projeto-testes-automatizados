require 'calabash-android/abase'

class Menu < Calabash::ABase

  def alerta;        'alertTitle'    end
  def btn_ok;        'OK'            end
  def titulo_app;    'Orgzly'        end
  def f_menu;        'Close drawer'  end
  def a_menu;        'Open drawer'   end

  def pular_alerta
    wait_for_element_exists "* marked:'#{alerta}'"
    touch "* marked:'#{btn_ok}'"
  end

  def abrir_menu
    wait_for_element_exists "* marked:'#{a_menu}'"
    touch "* marked:'#{a_menu}'"
  end

  def fechar_menu
    if element_exists "* marked:'#{f_menu}'"
      touch "* marked:'#{f_menu}'"
    elsif element_exists "* marked:'#{a_menu}'"
      touch "* marked:'#{a_menu}'"
    end
  end

end
