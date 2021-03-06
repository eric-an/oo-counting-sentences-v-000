require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    modified = self.split(/[!|.|?]/)
    sentences_array = modified.reject { |i| i.empty?} 
    sentences_array.count
  end
end