using Plots
using DifferentialEquations

w = 6^(1/2)
g = 0
dt = 0.05
t = (0.0, 60.0)
x0 = [0.6, 1.6]

function f(t)
    sin(0*t)
end

function eq(x, u, p, t)
    x[1] = u[2]
    x[2] = -w * w * u[1] - g* u[2] - f(t)
    return x
end

prob_sde = ODEProblem(eq, x0, t)
sol = solve(prob_sde, dt=dt)

plot(sol, vars=(1,2))