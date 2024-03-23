using DifferentialEquations
using Plots

x0 = [9]
N = 1040
t = (0,10)
dt = 0.1
a1 = 0.94
a2 =  0.000094


function eq(du, u, p, t)
    du[1] = (a1 + a2*u[1])*(N-u[1])
end
prob_sde = ODEProblem(eq, x0, t)
sol = solve(prob_sde, dt=dt)
plot(sol)
savefig("plot1.png")