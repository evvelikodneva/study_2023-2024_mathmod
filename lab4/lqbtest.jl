using Plots
using DifferentialEquations

# Функция, задающая правую часть дифференциального уравнения
function harmonic_oscillator_damped_external(du, u, p, t)
    du[1] = u[2]
    du[2] = -6 * u[1] - 12 * u[2] - sin(6 * t) # Гармонический осциллятор с затуханием и внешней силой
end

# Начальные условия
u₀ = [0.6, 1.6] # начальное положение и начальная скорость
tspan = (0.0, 60.0) # диапазон времени

# Решение уравнения
prob = ODEProblem(harmonic_oscillator_damped_external, u₀, tspan)
sol = solve(prob, dt=0.05)

# Построение фазового портрета
plot(sol, vars=(1,2), xlabel="x", ylabel="x'", label="Phase Portrait", title="Harmonic Oscillator with Damping and External Force")

# Построение графика решения
# plot(sol, xlabel="t", ylabel="x(t)", label="Solution", title="Harmonic Oscillator with Damping and External Force")
