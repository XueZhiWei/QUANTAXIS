classdef DealerStrategy < handle
    % by yutiansut
    % behavior of market dealers
    % 2016/6/1
    % 
    %     for i=1:5000
    %         TM.RandomxStrategy()
    %         TM.RandomiStrategy()
    %         price(i)=TM.PriceDS.x;
    %     end
    properties
        PriceDS
        AmountDS
    end
    events
        
    end
    methods
        function DS=DealerStrategy()
            
        end
    end
    
    methods
        function DS = RandomStrategy(DS,varargin)
            DS.PriceDS.x=DS.Price.x+(2*ceil(rand-0.5)-1)*0.5;
            DS.AmountDS.Output=5000*(2*ceil(rand-0.5)-1);
        end
        function DS = RandomNStrategy(DS,varargin)
            DS.PriceDS.x=DS.Price.x+(2*ceil(randn-0.5)-1)*0.5;
        end
        function DS = RandomxStrategy(DS,varargin)
            DS.PriceDS.x=DS.Price.x+rand*0.5;
        end
        function DS = RandomiStrategy(DS,varargin)
            DS.PriceDS.x=DS.Price.x+randi(2)*0.5;
        end
    end
end