using DifferentialEquations
using Plots

x0 = [9]
N = 1040
t = (0,0.2)
dt = 0.0001
function a(t)
    return 0.94*sin(t)
end

function eq(du, u, p, t)
    du[1] = (a(t) + a(t)*u[1])*(N-u[1])
end
prob_sde = ODEProblem(eq, x0, t)
sol = solve(prob_sde, dt=dt)
plot(sol)
savefig("plot3.png")