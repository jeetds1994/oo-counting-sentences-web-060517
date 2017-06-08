require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.include?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences

    # self.split.each_with_object (0){|word, counter|
    # counter += 1 if word.include?(".") || word.include?("!") || word.include?("?")}
    counter = 0
    self.split.each do |word|
      if word.include?(".") || word.include?("!") || word.include?("?")
        counter += 1
      end
    end
    counter
  end
end
