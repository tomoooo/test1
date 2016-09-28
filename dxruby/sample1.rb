require 'dxruby'

image = Image.load('data.png')  # data.pngを読み込む
image1 = Image.load_tiles('data.png', 2, 2)
font = Font.new(18)

Window.loop do
  x = Input.mouse_pos_x  # マウスカーソルのx座標
  y = Input.mouse_pos_y  # マウスカーソルのy座標
  if Input.mouse_down?(M_LBUTTON)
    Window.draw(x-25, y-25, image1[0])  # data.pngの左上を描画する
    Window.draw(x+25, y-25, image1[1])  # data.pngの右上を描画する
    Window.draw(x-25, y+25, image1[2])  # data.pngの左下を描画する
    Window.draw(x+25, y+25, image1[3])  # data.pngの右下を描画する
    Window.draw_font(x+45, y-40, "ああああ", font)  # "ふぉんと"を描画する
  else
    Window.draw(x, y, image)  # data.pngを描画する
  end
  if Input.key_push?(K_ESCAPE)  # Escキーで終了
    break
  end

end