class JobsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin, only: [:new]

  def index
    @jobs = Job.where(user: current_user)
  end

  def new
    @users = User.order(:name)
    @job = Job.new
  end

  def create

# "job"=>{"title"=>"big job", "description"=>"some description", "notes"=>"some notes", "document"=>#<ActionDispatch::Http::UploadedFile:0x007fbdb8d00d90 @tempfile=#<Tempfile:/var/folders/ss/09pg__bn163bykn62ry2_byc0000gn/T/RackMultipart20160526-5575-m498mw.pdf>, @original_filename="work_order.pdf", @content_type="application/pdf", @headers="Content-Disposition: form-data; name=\"job[document]\"; filename=\"work_order.pdf\"\r\nContent-Type: application/pdf\r\nContent-Length: 0\r\n">, "trade"=>"plumber", "assinging_company"=>"some notes", "address"=>{"name"=>"address name", "first_line"=>"first line", "second_line"=>"second line", "city"=>"city", "county"=>"county", "postcode"=>"postcode", "notes"=>"notes"}, "user"=>"559"}, "commit"=>"Create", "multipart"=>"true", "controller"=>"jobs", "action"=>"create"} permitted: false>
    permitted = params.permit(job: [:title, :description, :document])
    address_permitted = params.permit(job: [address: [:first_line, :second_line, :city, :county, :name, :notes, :postcode]] )
    user = User.find(params[:job][:user])
    address = Address.first_or_create(address_permitted[:job][:address])
    job = Job.new(permitted[:job])
    job.user = user
    job.address_id = address.id
    job.save
    p job.errors
  end

  def show
  end
end
