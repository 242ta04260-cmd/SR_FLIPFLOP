`timescale 1ns/1ps

module sr_flipflop_tb;

    reg S;
    reg R;
    reg CLK;
    wire Q;
    wire Qbar;

    sr_flipflop uut (
        .S(S),
        .R(R),
        .CLK(CLK),
        .Q(Q),
        .Qbar(Qbar)
    );

    // Clock generation
    always #5 CLK = ~CLK;

    initial begin
        // Initialize
        CLK = 0;
        S = 0;
        R = 0;

        // Hold
        #10;

        // Set
        S = 1;
        R = 0;
        #10;

        // Hold
        S = 0;
        R = 0;
        #10;

        // Reset
        S = 0;
        R = 1;
        #10;

        // Hold
        S = 0;
        R = 0;
        #10;

        // Invalid condition
        S = 1;
        R = 1;
        #10;

        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | CLK=%b | S=%b | R=%b | Q=%b | Qbar=%b",
                 $time, CLK, S, R, Q, Qbar);
    end

endmodule
