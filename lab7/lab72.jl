using DifferentialEquations
using Plots

x0 = [9]
N = 1040
t = (0,0.01)
dt = 0.0001
a1 = 0.000094
a2 = 0.94
v = [0]
function equ(du, u, p, t)
    du[1] = (a1 + a2*u[1])*(N-u[1])
end
prob_sde = ODEProblem(equ, x0, t)
sol = solve(prob_sde, dt=dt)
plot(sol, vars=1)