class ChildrenController < ApplicationController
    
    
    def top_children_question
        @children = Child.new
    end    
    
    # パーソナライズするための質問
    def new
        @children = Child.new(children_params)
        @colors = Color.all
        
        # top_children_questionで選択した性別に応じた画像を検索表示
        @styles = Style.where(sex: params[:child][:sex])
        
    end
         
    def create
        @children = Child.new(children_params)
        # @children.save
        
        
        # childが選択したcolor_idのみを中間テーブルで取得。
        color_value = params[:child][:color].values
        color_value.each do |c_v|
        if c_v =="1"
            puts("ok")
            
            
            
            
             
            # binding.pry    
        end
       end
        
   end
        
        
        
        
        
        
    
    
    
    private
        def children_params
            params.require(:child).permit(:name, :birthday, :sex, :color, :style)
        end
        
end