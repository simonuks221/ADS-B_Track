classdef ApproximationType
   properties 
       name,
       coeficients
   end
   methods
       function this = ApproximationType(name, coeficients)
         this.name = name;
         this.coeficients = coeficients;
       end
   end
end