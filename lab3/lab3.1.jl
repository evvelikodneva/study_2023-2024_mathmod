using Plots
using DifferentialEquations
a, b, c, h = 0.343, 0.895, 0.699, 0.433
dt = 0.05
v0 = [22022, 33033]
function P(t)
    2*sin(2*t)
end
function Q(t)
    2*cos(t)
end


function equations(du, u, p, t)
    du[1] = - a*u[1] - b*u[2] + P(t)
    du[2] = - c*u[1]*u[2] - h*u[2] + Q(t)
    println(u)
end

prob_sde = ODEProblem(equations, v0, (0.0, 1.0))
sol = solve(prob_sde, dt=dt)
plot(sol, xlabel="Шаг", ylabel="Численность армии")