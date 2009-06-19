class WritsController < ApplicationController
  before_filter :require_user, :only => [:new, :create]
  before_filter :allow_create
  # GET /writs
  # GET /writs.xml
  def index
    if params[:user_id]
      @writs = Writ.find :all, :conditions => {:user_id => params[:user_id]}, :order => "created_at desc"
      @writ = Writ.new
      @user = User.find :first, :conditions => {:id => params[:user_id]}
      @current_is_user_page = @user && current_user && @user.login == current_user.login
    else
      @writs = Writ.all :order => "created_at desc"
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @writs }
    end
  end

  # GET /writs/1
  # GET /writs/1.xml
  def show
    @writ = Writ.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @writ }
    end
  end

  # GET /writs/new
  # GET /writs/new.xml
  def new
    @writ = Writ.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @writ }
    end
  end

  # POST /writs
  # POST /writs.xml
  def create
    @writ = Writ.new(params[:writ])
    @writ.user_id = current_user.id

    respond_to do |format|
      if @writ.save
        flash[:notice] = 'Writ was successfully created.'
        format.html { redirect_to user_writs_path(current_user) }
        format.xml  { render :xml => @writ, :status => :created, :location => @writ }
        format.js
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @writ.errors, :status => :unprocessable_entity }
      end
    end
  end

  private
  def allow_create
    @allow_create = params[:user_id] && current_user && params[:user_id].to_i == current_user.id
  end
end
