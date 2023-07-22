# frozen_string_literal: true

class String
  def cut_accent
    NoAccent.cut(self)
  end
end
