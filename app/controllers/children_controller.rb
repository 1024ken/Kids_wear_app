class ChildrenController < ApplicationController
    
    
    def top_children_question
        # 最初の戻るボタン
        if params[:back]
            @children = current_user.children.build
            @children.name = params["name"]
            @children.sex = params["sex"]
            @children.size = params["size"]
            @children.birthday = params["birthday"]
        else    
        # user_idを含んでインスタス化
            @children = current_user.children.build
        end
    end    

    
    
    
    # パーソナライズするための質問
    def new
          @children = current_user.children.build(children_params)
        #   @children.save
        # 　binding.pry
                
            
          if @children.invalid?
              render "top_children_question"
          else
              @children.comments.build
              @colors = Color.all
                
            # top_children_questionで選択した性別に応じた画像を検索表示
              @styles = Style.where(sex: params[:child][:sex])
              @partterns = Parttern.where(sex: params[:child][:sex])
              @dislikes = Dislike.where(sex: params[:child][:sex])
          end
    end
    
    
         
    def create
        @children = current_user.children.build(children_params)
        @children.save
        
        # クリックの有無にかかわらず、画像すべての情報をViewから取得。
        # childが選択したcolor_idのみを中間テーブルで取得。
        # valueが1の場合、中間テーブルにcolor_idを保存
        color_key_value = params[:child][:color]
        color_key_value.each do |key,value|
            if value == "1"
              @color_children = ColorChild.new(child_id: @children.id, color_id: key)
              @color_children.save
            else
              puts '0だよ！保存しないお'
            end  
        end

        # childが選択したstyle_idのみを中間テーブルで取得。
        style_key_value = params[:child][:style]
        style_key_value.each do |key,value|
            # valueが1の場合、中間テーブルにstyle_idを保存
            if value == "1"
              @style_children = StyleChild.new(child_id: @children.id, style_id: key)
              @style_children.save 
            else
              puts "0だよ。保存しないよ"
            end    
        end
        
        # childが選択したparttern_idのみを中間テーブルで取得。
        parttern_key_value = params[:child][:parttern]
        parttern_key_value.each do |key,value|
            # valueが1の場合、中間テーブルにstyle_idを保存
            if value == "1"
              @parttern_children = PartternChild.new(child_id: @children.id, parttern_id: key)
              @parttern_children.save 
            else
              puts "保存しない"
            end    
        end
        
        # childが選択したdislike_idのみを中間テーブルで取得。
        dislike_key_value = params[:child][:dislike]
        dislike_key_value.each do |key,value|
            # valueが1の場合、中間テーブルにstyle_idを保存
            if value == "1"
              @dislike_children = DislikeChild.new(child_id: @children.id, dislike_id: key)
              @dislike_children.save 
            else
              puts "保存しないoooo"
            end    
        end

        if current_user.addresses.blank?
          redirect_to new_address_path 
        else  
          render template: "charges/new"
        end
          
   end
   
   
  # 子供詳細画面
   def show
    #  @children = Child.find_by(user_id: current_user.id)
     @children = Child.find(params[:id])
   end
   
   
   
# Userのマイページから子供削除
   def destroy
    #  @children = Child.find_by(user_id: current_user.id)
     @children = Child.find(params[:id])
    #  binding.pry
     @children.destroy
     redirect_to users_path, notice: '子供の情報を削除されました'
   end
   
   def update
       @children = Child.find(params[:id])
      if @children.update(children_params)
          redirect_to users_path, notice: "更新しました。"
      else
          render :edit
      end       
   end       
    
    private
        def children_params
            params.require(:child).permit(:id, :name, :birthday, :sex, :color, :size, :style, :parttern, :dislike, :content, :image, comments_attributes: [:id, :content])
        end
        
end