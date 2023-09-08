using Base.MathConstants


import Pkg;
Pkg.add("Plots");
using Plots;
x=[0,0.0025,0.0050,0.0075,0.0100,0.0125,0.0150,0.0175,0.0200,0.0225,0.0250,0.0275,0.0300,0.0325,0.0350,
0.0375,0.0400,0.0425,0.0450,0.0500,0.0525,0.0550,0.0575,0.0600,0.0625,0.0650,0.0675,0.0700,0.0725,0.0750]
y1=[8.24,8.24,7.75,7.11,6.5,5.77,5.2,4.56,3.80,3.55,3.2,2.34,2.22,1.79,1.53,1.36,
1.20,1.03,0.963,0.921,0.846,0.803,0.794,0.770,0.744,0.735,0.566,0.712,0.709,0.680,0.680]
y2=[8.32,8.11,7.61,7.11,6.58,6.12,5.55,5.43,4.81,4.39,4.01,3.57,3.27,2.94,2.65,2.41,
2.17,1.91,1.76,1.60,1.44,1.36,1.24,1.17, 1.05,0.982,0.960,0.932,0.874,0.846,0.845];
y3=[8.32,8.32,8,7.80,7.77,7.45,7.09,6.85,6.47,6.31,5.96,5.80,5.44,5.27,4.90,4.57,4.28,
3.91,3.72,3.54,3.38,3.20,3.03,2.87,2.64,2.50,2.43,2.27,2.23,2.08,1.96];

y1n=y1/8.24;
y2n=y2/8.32;
y3n=y3/8.30;

e = float(Base.MathConstants.e)

plot(x,y1, seriestype=:scatter, label="C1", xlabel="Desplazamiento (cm)", title="Camino óptico 1");
savefig("C1.png")
plot(x,y2, seriestype=:scatter, label="C2", xlabel="Desplazamiento (cm)", title="Camino óptico 2");
savefig("C2.png")
plot(x,y3, seriestype=:scatter, label="C3", xlabel="Desplazamiento (cm)", title="Camino óptico 3");
savefig("C3.png")

plot(x, y1n, seriestype=:scatter, label="C1",ylabel="Normalización", xlabel="Desplazamiento (cm)", title="Camino óptico 1");
# Agregar la línea horizontal en y=1/e
hline!([1/e], line=:dash, label="y=1/e", color=:red)

# Agregar la línea horizontal en y=1/e^2
hline!([1/(e^2)], line=:dash, label="y=1/e^2", color=:blue)
savefig("C1_norm.png")
plot(x, y2n, seriestype=:scatter, label="C2",ylabel="Normalización", xlabel="Desplazamiento (cm)", title="Camino óptico 2");
# Agregar la línea horizontal en y=1/e
hline!([1/e], line=:dash, label="y=1/e", color=:red)

# Agregar la línea horizontal en y=1/e^2
hline!([1/(e^2)], line=:dash, label="y=1/e^2", color=:blue)
savefig("C2_norm.png")
plot(x, y3n, seriestype=:scatter, label="C3",ylabel="Normalización", xlabel="Desplazamiento (cm)", title="Camino óptico 3");
# Agregar la línea horizontal en y=1/e
hline!([1/e], line=:dash, label="y=1/e", color=:red)

# Agregar la línea horizontal en y=1/e^2
hline!([1/(e^2)], line=:dash, label="y=1/e^2", color=:blue)
savefig("C3_norm.png")

plot(x,y1, seriestype=:scatter, label="C1");
plot!(x,y2, seriestype=:scatter, label="C2");
plot!(x,y3, seriestype=:scatter, label="C3", xlabel="Desplazamiento (cm)", title="Camino óptico 1, 2, 3");
savefig("Ctodas.png")
plot(x, y1n, seriestype=:scatter, label="C1");
plot!(x, y2n, seriestype=:scatter, label="C2");
plot!(x, y3n, seriestype=:scatter, label="C3", ylabel="Normalización", xlabel="Desplazamiento (cm)", title="Camino óptico 1, 2, 3");
hline!([1/e], line=:dash, label="y=1/e", color=:red)

# Agregar la línea horizontal en y=1/e^2
hline!([1/(e^2)], line=:dash, label="y=1/e^2", color=:blue)
savefig("Ctodas_norm.png")

# Define las etiquetas personalizadas para los ejes (x, y)
valores_x = ["Φ₁", "Φ₂", "Φ₃"]
valores_y = [380, 520, 660]

# Crea la gráfica con etiquetas personalizadas en el eje x y marcadores cuadrados verdes
scatter(
    valores_x,
    valores_y,
    seriestype=:scatter,
    xlabel="Camino Óptico",
    ylabel="μm",
    label="1/e^2",
    title="Gráfico 1/e^2",
    markershape=:square,
    markercolor=:green
)

# Une los puntos por líneas
plot!(
    valores_x,
    valores_y,
    seriestype=:line,
    color=:green,
    label=""
)

# Establece el rango en el eje y de 0 a 30 y las marcas cada 5 unidades
xlims!(0, 3)
#ylims!(0, 30)
#yticks!(0:5:30)

# Configurar el tema con fondo blanco y sin grid
theme(:default, bg=:white, grid=false)

# Guardar la gráfica como una imagen PNG
savefig("1e2.png")

valores_x1 = ["Φ₁", "Φ₂", "Φ₃"]
valores_y1 = [260, 340, 480]

# Crea la gráfica con etiquetas personalizadas en el eje x y marcadores cuadrados verdes
scatter(
    valores_x1,
    valores_y1,
    seriestype=:scatter,
    xlabel="Camino Óptico",
    ylabel="μm",
    label="1/e",
    title="Gráfico 1/e",
    markershape=:square,
    markercolor=:green
)

# Une los puntos por líneas
plot!(
    valores_x1,
    valores_y1,
    seriestype=:line,
    color=:green,
    label=""
)

# Establece el rango en el eje y de 0 a 30 y las marcas cada 5 unidades
xlims!(0, 3)
#ylims!(0, 30)
#yticks!(0:5:30)

# Configurar el tema con fondo blanco y sin grid
theme(:default, bg=:white, grid=false)

# Guardar la gráfica como una imagen PNG
savefig("1e.png")