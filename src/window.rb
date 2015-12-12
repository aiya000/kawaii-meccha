require 'Qt'
require './kawaii'


class Window < Qt::Widget
  slots :close

  def initialize(parent = nil)
    super(parent)
    resize(450, 500)

    @kawaii = KawaiiCore.new
    message = @kawaii.message('no message')

    @messageLabel = Qt::Label.new(message, self) { setGeometry(10, 10, 420, 60) }
    # Qt::Label.new('(*^-^)', self) { setGeometry(10, 30, 80,  20) }

    zunko = Qt::Label.new(self) { setGeometry(30, 80, 316, 400) }
    zunko.pixmap = Qt::Pixmap.new("zunko.png")
    zunko.show()
    zunko.attribute = Qt::WA_DeleteOnClose

    Qt::PushButton.new('話しかける', self) do |btn|
      btn.setGeometry(320, 80, 100, 40)
      btn.connect(btn, SIGNAL(:clicked), self, SLOT(:close))
    end
  end

  def close
    message = @kawaii.message('no message')
    @messageLabel.setText(message)
  end
end
