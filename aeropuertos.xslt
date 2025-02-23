<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />

    <!-- Plantilla principal -->
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Airports</title>
                <!-- Enlaza Tailwind CSS -->
                <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
                <!-- Enlaza Font Awesome -->
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
            </head>
            <body class="bg-white text-gray-900">
                <!-- Contenedor principal -->
                <div class="max-w-md mx-auto p-4">
                    <!-- Encabezado -->
                    <div class="flex items-center mb-4">
                        <i class="fas fa-arrow-left text-xl"></i>
                        <h1 class="text-xl font-bold mx-auto">Airports</h1>
                    </div>

                    <!-- Barra de búsqueda -->
                    <div class="relative mb-4">
                        <input type="text" placeholder="Search airports" class="w-full py-2 pl-10 pr-4 rounded-lg bg-gray-100 text-gray-600 focus:outline-none" />
                        <i class="fas fa-search absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400"></i>
                    </div>

                    <!-- Filtros -->
                    <div class="flex space-x-2 mb-4">
                        <button class="px-4 py-2 rounded-full bg-gray-100 text-gray-600">All</button>
                        <button class="px-4 py-2 rounded-full bg-gray-100 text-gray-600">In US</button>
                        <button class="px-4 py-2 rounded-full bg-gray-100 text-gray-600">In Canada</button>
                        <button class="px-4 py-2 rounded-full bg-gray-100 text-gray-600">In Australia</button>
                    </div>

                    <!-- Lista de aeropuertos -->
                    <div class="space-y-4">
                        <xsl:for-each select="root/body/div">
                            <div class="p-4 bg-gray-100 rounded-lg">
                                <xsl:value-of select="." />
                            </div>
                        </xsl:for-each>
                    </div>

                    <!-- Botón para agregar aeropuerto -->
                    <button class="w-full py-2 mt-6 rounded-lg bg-gray-100 text-gray-600">Add airport</button>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>