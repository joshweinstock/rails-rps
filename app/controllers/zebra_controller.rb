class ZebraController < ApplicationController
    def giraffe
      moves = ["rock", "paper", "scissors"]
      @opponent_move = moves.sample
      if @opponent_move == "rock"
        @outcome = "tied"
      elsif @opponent_move == "paper"
        @outcome = "lost"
      else
        @outcome = "won"
      end
      render({ :template => "game_templates/rock"})

    end

    def elephant
      moves = ["rock", "paper", "scissors"]
      @opponent_move = moves.sample
      if @opponent_move == "rock"
        @outcome = "won"
      elsif @opponent_move == "paper"
        @outcome = "tied"
      else
        @outcome = "lost"
      end
      render({ :template => "game_templates/paper"})
    end

    def lion
      moves = ["rock", "paper", "scissors"]
      @opponent_move = moves.sample
      if @opponent_move == "rock"
        @outcome = "lost"
      elsif @opponent_move == "paper"
        @outcome = "won"
      else
        @outcome = "tied"
      end
      render({ :template => "game_templates/scissors"})

    end

    def rules
      render({ :template => "game_templates/home"})
    end

  end
