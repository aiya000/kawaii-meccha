require 'Qt'
require './window'


app = Qt::Application.new(ARGV)
window = Window.new
window.show
app.exec
