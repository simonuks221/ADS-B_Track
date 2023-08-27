classdef ConvolutionType
   properties 
       name,
       convPreambule,
       expectedMaximum,
       diffAmount
   end
   methods
       function this = ConvolutionType(name, expectedMaximum, diffAmount)
         this.name = name;
         this.expectedMaximum = expectedMaximum;
         this.diffAmount = diffAmount;
       end
   end
end