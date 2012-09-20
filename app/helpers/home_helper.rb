module HomeHelper
  def truncate_wrap(text)
    # text.gsub(/\\n/, ' ')
    text = truncate(text, :length => 250, :separator => ' ')
    word_wrap(text, :line_width => 80).gsub(/\n/, '<br>').html_safe
  end
end
