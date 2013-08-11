class EmployeeCommitmentsController < ApplicationController
  # GET /employee_commitments
  # GET /employee_commitments.json
  def index
    @employee_commitments = EmployeeCommitment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employee_commitments }
    end
  end

  # GET /employee_commitments/1
  # GET /employee_commitments/1.json
  def show
    @employee_commitment = EmployeeCommitment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee_commitment }
    end
  end

  # GET /employee_commitments/new
  # GET /employee_commitments/new.json
  def new
    @employee_commitment = EmployeeCommitment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee_commitment }
    end
  end

  # GET /employee_commitments/1/edit
  def edit
    @employee_commitment = EmployeeCommitment.find(params[:id])
  end

  # POST /employee_commitments
  # POST /employee_commitments.json
  def create
    @employee_commitment = EmployeeCommitment.new(params[:employee_commitment])

    respond_to do |format|
      if @employee_commitment.save
        format.html { redirect_to @employee_commitment, notice: 'Employee commitment was successfully created.' }
        format.json { render json: @employee_commitment, status: :created, location: @employee_commitment }
      else
        format.html { render action: "new" }
        format.json { render json: @employee_commitment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employee_commitments/1
  # PUT /employee_commitments/1.json
  def update
    @employee_commitment = EmployeeCommitment.find(params[:id])

    respond_to do |format|
      if @employee_commitment.update_attributes(params[:employee_commitment])
        format.html { redirect_to @employee_commitment, notice: 'Employee commitment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee_commitment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_commitments/1
  # DELETE /employee_commitments/1.json
  def destroy
    @employee_commitment = EmployeeCommitment.find(params[:id])
    @employee_commitment.destroy

    respond_to do |format|
      format.html { redirect_to employee_commitments_url }
      format.json { head :no_content }
    end
  end
end
