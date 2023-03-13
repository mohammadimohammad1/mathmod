using Plots
using DifferentialEquations

a = 0.12
b = 0.002
S = 12869
I = 113
R = 31

tspan = (0, 300)
t = collect(LinRange(0, 300, 1000))
u0 = [S; I; R]

function syst(dy, y, p, t)
    dy[1] = 0
    dy[2] = b*y[2]
    dy[3] = -b*y[2]
end

prob = ODEProblem(syst, u0, tspan)

sol = solve(prob, saveat=t)

plot(sol)

function syst(dy, y, p, t)
    dy[1] = -a*y[1]
    dy[2] = a*y[1]-b*y[2]
    dy[3] = b*y[2]
end

prob = ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat=t)

plot(sol)


