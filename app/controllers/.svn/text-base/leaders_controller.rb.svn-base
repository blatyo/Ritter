class LeadersController < ApplicationController
   before_filter :require_user
  # POST /leaders
  # POST /leaders.xml
  def create
    @leader = User.find(params[:user_id])
    @leader.user_followers.create(:follower_id => current_user.id)

    saved = @leader.save
    respond_to do |format|
      if saved
        flash[:notice] = 'You are now following '.concat(@leader.login)
      end
      format.html { redirect_to user_writs_path(@leader) }
      if saved
        format.xml  { render :xml => @leader, :status => :created, :location => @leaders }
      else
        format.xml  { render :xml => @leader.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /leaders/1
  # DELETE /leaders/1.xml
  def destroy
    @user_follower = UserFollower.find(:first, :conditions => {:user_id => params[:id], :follower_id => params[:user_id]})
    @user_follower.destroy

    respond_to do |format|
      format.html { redirect_to(user_writs_path(current_user)) }
      format.xml  { head :ok }
    end
  end
end
