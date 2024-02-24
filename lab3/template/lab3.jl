using Plots
using DifferentialEquations
a, b, c, h = 0.401, 0.707, 0.606, 0.502
dt = 0.05
v0 = [22022, 33033]
function P(t)
    sin(8*t)
end
function Q(t)
    cos(6*t)
end


function equations(du, u, p, t)
    du[1] = - a*u[1] - b*u[2] + P(t)
    du[2] = - c*u[1] - h*u[2] + Q(t)
    return du
end

prob_sde = ODEProblem(equations, v0, (0.0, 1.0))
sol = solve(prob_sde, dt=dt)
plot(sol, xlabel="Шаг", ylabel="Численность армии")