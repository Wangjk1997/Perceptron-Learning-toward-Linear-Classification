function w_o = learning(w_i, x, rate)
    w_o = w_i + 1/2 * rate * (x - x * sign(w_i * x'));
end