using Plots
using DifferentialEquations

p_cr = 38
N=40
q=1

tau1=19
tau2=25

p1=12.5
p2=8.9

d = 0.00068

a1 = p_cr/(tau1^2*p1^2*N*q)
a2 = p_cr/(tau2^2*p2^2*N*q)
b = p_cr/(tau1^2*tau2^2*p1^2*p2^2*N*q)
c1 = (p_cr-p1)/(tau1*p1)
c2 = (p_cr-p2)/(tau2*p2)

M1 = 7
M2 = 6.1

tmax = 30
t = collect(LinRange(0, tmax, 500))
tspan = (0, tmax)

function syst(dy, y, p, t)
    dy[1] = y[1] - (a1/c1)*y[1]*y[1] - (b/c1)*y[1]*y[2]
    dy[2] = (c2/c1)*y[2] - (a2/c1)*y[2]*y[2] - (b/c1)*y[1]*y[2]
end

prob = ODEProblem(syst, [M1, M2], tspan)
sol = solve(prob, saveat=t)

plot(sol)

function syst(dy, y, p, t)
    dy[1] = y[1] - (a1/c1)*y[1]*y[1] - (b/c1)*y[1]*y[2]
    dy[2] = (c2/c1)*y[2] - (a2/c1)*y[2]*y[2] - (b/c1+d)*y[1]*y[2]
end

prob = ODEProblem(syst, [M1, M2], tspan)
sol = solve(prob, saveat=t)

plot(sol)


