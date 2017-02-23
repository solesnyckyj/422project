

module score_logic(buttonin, instLoss, placement, score, winlose)
	//outputs
	output reg [3:0] score; // score goes from 0 to 10, if it reaches 10 you win
	output reg [1:0] winlose; // left bit is win, right bit is lose (for LED)
	//inputs
	input reg [7:0] buttonin;
	input reg [7:0] placement;
	input instLoss;

//internal variables
	reg [1:0] winlose;
	reg [3:0] score;

always @ (posedge instLoss or  posedge [7:0] buttonin > 0);

 case(placement) 
    3'b000 :
    begin
    if (instLoss)
    	begin
    		score = 0;
    		winlose = 2'b01;
    	end
     else if (buttonin = 8'b00000001)
     begin
     	if score <= 9
     		begin
     		score = score+1;
     		end
     	if score >9;
     		begin
    		score = 10;
    		winlose = 2'b10;
     		end
     end

     end 

    3'b001 : 
    begin
        if (instLoss)
    	begin
    		score = 0;
    		winlose = 2'b01;
    	end
     else if (buttonin = 8'b00000010)
     begin
     	if score <= 9
     		begin
     		score = score+1;
     		end
     	if score >9;
     		begin
    		score = 10;
    		winlose = 2'b10;
     		end
     end	
    end

    3'b010 : 
    begin
            if (instLoss)
    	begin
    		score = 0;
    		winlose = 2'b01;
    	end
     else if (buttonin = 8'b00000100)
     begin
     	if score <= 9
     		begin
     		score = score+1;
     		end
     	if score >9;
     		begin
    		score = 10;
    		winlose = 2'b10;
     		end
     end		
    end

    3'b011 : 
    begin
            if (instLoss)
    	begin
    		score = 0;
    		winlose = 2'b01;
    	end
     else if (buttonin = 8'b00001000)
     begin
     	if score <= 9
     		begin
     		score = score+1;
     		end
     	if score >9;
     		begin
    		score = 10;
    		winlose = 2'b10;
     		end
     end		
    end

    3'b100 : 
    begin
            if (instLoss)
    	begin
    		score = 0;
    		winlose = 2'b01;
    	end
     else if (buttonin = 8'b00010000)
     begin
     	if score <= 9
     		begin
     		score = score+1;
     		end
     	if score >9;
     		begin
    		score = 10;
    		winlose = 2'b10;
     		end
     end		
    end

    3'b101 : 
    begin
            if (instLoss)
    	begin
    		score = 0;
    		winlose = 2'b01;
    	end
     else if (buttonin = 8'b00100000)
     begin
     	if score <= 9
     		begin
     		score = score+1;
     		end
     	if score >9;
     		begin
    		score = 10;
    		winlose = 2'b10;
     		end
     end		
    end

    3'b110 :
    begin
             if (instLoss)
    	begin
    		score = 0;
    		winlose = 2'b01;
    	end
     else if (buttonin = 8'b01000000)
     begin
     	if score <= 9
     		begin
     		score = score+1;
     		end
     	if score >9;
     		begin
    		score = 10;
    		winlose = 2'b10;
     		end
     end		
     end 

    3'b111 :
    begin
             if (instLoss)
    	begin
    		score = 0;
    		winlose = 2'b01;
    	end
     else if (buttonin = 8'b10000000)
     begin
     	if score <= 9
     		begin
     		score = score+1;
     		end
     	if score >9;
     		begin
    		score = 10;
    		winlose = 2'b10;
     		end
     end		
     end 
     
    default: 
 endcase 
endmodule
