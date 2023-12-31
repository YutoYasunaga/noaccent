# frozen_string_literal: true

require_relative 'noaccent/version'
require 'noaccent/accent'
require 'noaccent/string_extension'

module NoAccent
  class Error < StandardError; end

  def self.cut(string)
    string = string.tr(A_LINE_DOWNCASE, 'a')
    string = string.tr(A_LINE_UPCASE, 'A')
    string = string.tr(O_LINE_DOWNCASE, 'o')
    string = string.tr(O_LINE_UPCASE, 'O')
    string = string.tr(E_LINE_DOWNCASE, 'e')
    string = string.tr(E_LINE_UPCASE, 'E')
    string = string.tr(U_LINE_DOWNCASE, 'u')
    string = string.tr(U_LINE_UPCASE, 'U')
    string = string.tr(I_LINE_DOWNCASE, 'i')
    string = string.tr(I_LINE_UPCASE, 'I')
    string = string.tr(Y_LINE_DOWNCASE, 'y')
    string = string.tr(Y_LINE_UPCASE, 'Y')
    string = string.tr(D_LINE_DOWNCASE, 'd')
    string = string.tr(D_LINE_UPCASE, 'D')
    string = string.tr(C_LINE_DOWNCASE, 'c')
    string = string.tr(C_LINE_UPCASE, 'C')
    string = string.tr(N_LINE_DOWNCASE, 'n')
    string.tr(N_LINE_UPCASE, 'N')
  end
end
