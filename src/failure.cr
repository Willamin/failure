require "./failure/*"

struct Nil
  def attempt(&block)
    self
  end

  def fail
    yield
    self
  end
end

{% for notnil in ["struct Struct", "class Object"] %}
{{ notnil.id }}
  def fail(&block)
    self
  end

  def attempt
    yield self
    self
  end
end
{% end %}
