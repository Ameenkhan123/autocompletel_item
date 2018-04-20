class MorningSlotsController < InheritedResources::Base

  private

    def morning_slot_params
      params.require(:morning_slot).permit(:name)
    end
end

