using Plots
using DifferentialEquations

x0 = -0.5
y0 = 0.5
u0 = [x0; y0]
t0=0
tmax=55
t = collect(LinRange(t0, tmax, 1000))
tspan = (t0, tmax)

w = 5.5
function syst(dy, y, p, t)
    dy[1] = y[2]
    dy[2] = -w*y[1]
end

prob = ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat=t)

plot(sol, idxs = (2))

plot(sol, idxs=(1, 2))

w = 5
g = 0.5
function syst(dy, y, p, t)
    dy[1] = y[2]
    dy[2] = -g*y[2] - w*y[1]
end

prob = ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat=t)

plot(sol, idxs = (2))

plot(sol, idxs=(1, 2))

w = 0.5
g = 5

function P(t)
    return 0.5*cos(5*t)
end

function syst(dy, y, p, t)
    dy[1] = y[2]
    dy[2] = -g*y[2] - w*y[1] + P(t)
end

prob = ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat=t)

plot(sol, idxs = (2))

plot(sol, idxs=(1, 2))


