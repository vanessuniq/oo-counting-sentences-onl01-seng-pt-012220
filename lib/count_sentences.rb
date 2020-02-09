require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    array = self.strip.split(/[.?!]/)
    array.reject! {|element|  element.nil? || element.strip.empty?}
    array.count
  end
end