class Cloth < ActiveRecord::Base

validates :size,presence: true                                        #不可空白    
validate :size_validation
validates :name,presence: true                                        #名字不可空白
validates :color,presence: true                                       #顏色不可空白
validate :color_validation
validates :production,presence: true                                  #產地不可空白
validates :price,numericality: {greater_than: 0 ,only_integer: true}  #價格要大於0，且是正整數
validates :amount,numericality: {greater_than: 0 ,only_integer: true} #價格要大於0，且是正整數


  def size_validation

    if size!='xl'                        #條件式  size若不是xl
      errors[:size]<<'請輸入xl!'          #就會顯示錯誤訊息
    end
  end


  def color_validation

  if color!='red'                         #條件式  顏色若不是red
      errors[:color]<<'請輸入紅色!'         #就會顯示錯誤訊息
    end
  end

end
