using Plots
using DifferentialEquations

a = 0.385
b = 0.000025
N = 1372

tspan = (0, 2)
t = collect(LinRange(0, 2, 500))
n = 2

function syst(dy, y, p, t)
    dy[1] = (a+b*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat = t)

plot(sol)

a = 0.000014
b = 0.15
N = 1372

tspan = (0, 0.1)
t = collect(LinRange(0, 0.1, 500))
n = 2

function syst(dy, y, p, t)
    dy[1] = (a+b*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat = t)

plot(sol)

a = 0.25
b = 0.75
N = 1372

tspan = (0, 0.1)
t = collect(LinRange(0, 0.1, 500))
n = 2

function syst(dy, y, p, t)
    dy[1] = (a*sin(t)+b*cos(t)*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat = t)

plot(sol)


