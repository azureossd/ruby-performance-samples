class HomeController < ApplicationController

  $objectList ||= Array.new

  def saveObjects(objectID)
      numbers = objectID / 8
      array = Array[]
      a = 0
      begin
          array[a] = a
          a +=1;
      end until a > numbers

      return array
  end

  def index
    start_time = Time.now

    i = 0
    num = 1000

    begin
        id = 1000 * 1024;
        objectId = saveObjects(id);
        $objectList.push(objectId);
        i +=1;
    end until i > num

    end_time = Time.now 
    
    elapsed_seconds = end_time.to_f - start_time.to_f
  
    @output = "Response back from method in #{elapsed_seconds}"
  end
end