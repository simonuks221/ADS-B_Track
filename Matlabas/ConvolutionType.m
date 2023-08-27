classdef ConvolutionType
   properties 
       name,
       convPreambule,
       expectedMaximum
   end
   methods
       function this = ConvolutionType(name, expectedMaximum)
         this.name = name;
         this.expectedMaximum = expectedMaximum;
       end
   end
end