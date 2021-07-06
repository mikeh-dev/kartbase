class EntriesController < ApplicationController
  before_action :set_entry, only: %i[ show edit update destroy ]

  def index
    @entries = Entry.all.order(date: :asc, time: :asc)
  end

  def show
  end


  def new
    @entry = Entry.new
    @entry = Entry.last.dup
    clear_changing_datapoints
    @entry.time = Time.now.strftime("%k:%M")
    @entry.date = Time.now.strftime("%d/%m/%Y")
  end


  def edit
  end

  def create
    @entry = Entry.new(entry_params)

      if @entry.save
        flash.now[:notice] = "Entry Saved!"
        render 'show'
      else
        flash.now[:alert] = "Incomplete Entry!"
        render 'new'
      end
  end

  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to @entry, notice: "Entry was successfully updated." }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: "Entry was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    def set_entry
      @entry = Entry.find(params[:id])
    end

    def entry_params
      params.require(:entry).permit(:track, :date, :time, :run, :gearing, :prepressure, :postpressure, :rearwidth, :frontwidth, :needleclip, :jet, :bestlap, :secondbestlap, :thirdbestlap, :airmix, :idle, :rimset, :tyre, :tyreset, :camber, :caster, :toe, :frontride, :rearride, :plug, :frontbar, :fuelload, :fuelmix, :condition, :chain, :axle, :endweight, :lapcount, :enginehour, :tyreage, :waddingage, :gearoilage, :sessiontype, :mainchanges, :sessionnotes, :besttoprevs, :bestbottomrevs, :secondbestlaptoprevs, :secondbestlapbottomrevs, :thirdbesttoprevs, :thirdbestbottomrevs, :highestrevs, :engine, :endfuel)
    end

    def clear_changing_datapoints
      @entry.bestlap = nil
      @entry.secondbestlap = nil
      @entry.thirdbestlap = nil
      @entry.run += 1
      @entry.mainchanges = nil
      @entry.sessionnotes = nil
      @entry.enginehour += 0.12
      @entry.lapcount = nil
      @entry.besttoprevs = nil
      @entry.secondbestlaptoprevs = nil
      @entry.thirdbesttoprevs = nil
      @entry.bestbottomrevs = nil
      @entry.secondbestlapbottomrevs = nil
      @entry.thirdbestbottomrevs = nil
      @entry.postpressure = nil
      @entry.fuelload = nil
      @entry.waddingage += 0.1
      @entry.gearoilage += 0.1
      @entry.tyreage += 13
      @entry.endweight = nil
    end
end
