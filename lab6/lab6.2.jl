using Plots
using DifferentialEquations

a = 0.01
b = 0.02
N = 12400
I0 = 150
R0 = 55
S0 = N - I0 - R0
t = (0, 400)
x0 = [S0,I0,R0]
dt = 0.01
function eqa(du, u, p, t)
    du[1] = -a*u[1]
    du[2] = a*u[1] - b*u[2]
    du[3] = b*u[2]
end
prob_sde = ODEProblem(eqa, x0, t)
sol = solve(prob_sde, dt=dt)

plot(sol, vars=1, label="S(t)")
plot!(sol, vars=2, label="I(t)")
plot!(sol, vars=3, label="R(t)")

savefig("plot2.png")