class Shoe < ActiveRecord::Base

validates :size,numericality: {greater_than: 0, only_float:true}      #輸入size值要大於0,且為浮點數
validate :size_validation
validates :name,presence: true                                        #名字不可空白
validates :color,presence: true                                       #顏色不可空白
validate :color_validation
validates :production,presence: true                                  #產地不可空白
validates :price,numericality: {greater_than: 0 ,only_integer: true}  #價格要大於0，且是正整數
validates :amount,numericality: {greater_than: 0 ,only_integer: true} #價格要大於0，且是正整數


def size_validation
	
	if size%0.5 != 0                      #條件式  計算後的餘數不等於0才會成立
		errors[:size]<<'必須是0.5的倍數'    #條件式成立後就執行這行指令（會顯示錯誤訊息）
	end
end


def color_validation

    if color!='red'                       #條件式  顏色若不是red
      errors[:color]<<'請輸入紅色!'         #就會顯示錯誤訊息
    end
  end


end
