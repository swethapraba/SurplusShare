class OrganizationController < ApplicationController
	def list
		@organizations = Organization.all #tells Rails to search the Organization table and store each row it finds in the @organizations instance object
	end

	def show
		@organization = Organization.find(params[:id])#tells Rails to find only book that has the id defined in params[:id]
		#params object is a container that enables you to pass values between method calls
		#ex: when on page called by list method, click on link to specific organization, passes id of that organization via params to show that specific org
	end

	def new
		@organization = Organization.new
		@organizationtypes = Organizationtype.all ####IMPORTANT TO FIX
		#is called when you display a page ot the user to take user input
		#second line grabs all the organization types and put them in a database called @organizationtypes -> you should make it one that the user chooses or default to 'Othercharity'
	end

	def create
		@organization = Organization.new(organization_params)#creates new instance variable called @book that holds a Book object built from user-submitted data

		if @organization.save 
			redirect_to :action => 'list' #redirect user to the list method if object saves correctly to database
			#redirect method is similar to performing a meta refresh on a web page; automaticaally forwards to destination w/o user interaction
		else
			@organizationtypes = Organizationtype.all#required in case data doesn't save successfully and becomes similar case as w/ new option
			render :action => 'new'#if object doesn't save correctly, user is sent back to the new method
		end
	end

	def organization_params #used to collect data from all the fields from object :organizations
		params.require(:organizations).permit(_:title, :price, :subject_id, :description____________________)
	
	def edit #displays data on the screen to be modified by the user
		@organization = Organization.find(params[:id])
		@organizationtypes = Organizationtype.all #grabs all orgtypes from database and puts them in an array called @organizationtypes
	end

	def update #for when user modifies data and wants to update the changes into the database, similar to create method
		#use me to update existing organizations in the database!
		@organization = Organization.find(params[:id])

		if @organization.update_attributes(organization_param) #similar to save method used by create, overwrites attributes
			redirect_to :action => 'show', :id => @organization
		else
			@organizationtypes = Organizationtype.all #required in case data doesn't save successfully (becomes like edit option)
			render :action => 'edit'
		end
	end

	def organization_param
		params.require(:organization).permit(________:title, :price, :subject_id, :description)
	end

	def delete ##THIS IS A BAD IDEA FIND A WAY TO JUST 'DEACTIVATE'
		Organization.find(params[:id]).destroy #find thing based on parameter passed- id- then destroys it
		redirect_to :action => 'list' #redirect user
	end

	def show_organizationtypes #allows  you to browse all the different organization types/categories and see organizations based on this
		@organizationtype = Organizationtype.find(params[:id])
	end
end
