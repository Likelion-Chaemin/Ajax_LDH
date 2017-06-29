class HomeController < ApplicationController
  def index
  end
  def write

    
    new_post = Post.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.save
    
    redirect_to "/list"
  end
  
  
  def list
    @every_post = Post.all.order("id desc") #글 쓴 순서를 바꿔주는 방법. decs를 하면 최근 글이 위로 올라가간다.
  end
  
  def update_view #update는 수정하는 페이지와 수정이 이루어지는 페이지 두개를 만들어야 한다.
    @one_post = Post.find(params[:id])
    
  end
  
  def siljae
    @one_post = Post.find(params[:id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.save
    redirect_to "/list"
  end
  
  def destroy
    @one_post = Post.find(params[:id])
    @one_post.destroy
    redirect_to "/list"
  end
  
end
