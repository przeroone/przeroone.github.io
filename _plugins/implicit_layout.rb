module ImplicitLayout
  def read_yaml(*args)
    super
    self.data['layout'] ||= 'app'
  end
end
Jekyll::Post.send(:include, ImplicitLayout)
