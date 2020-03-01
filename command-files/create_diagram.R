# Packages
if (!(require("pacman"))) install.packages("pacman")
pacman::p_load(DiagrammeR, DiagrammeRsvg, rsvg)

# Create diagram
workflow <- grViz("
      digraph rmarkdown {
      graph [rankdir = LR]
      node [shape = diamond
            height = 2.2
            width  = 2.5
            fontname = 'Arial'
            fontsize = 20]
      edge  [style=bold, fontname = 'Arial', weight=100]
      '1. Define' -> '2. Retrieve'; '2. Retrieve' -> '3. Document'
      '3. Document' -> '4. Curate'; '4. Curate' -> '5. Publish'
      
      edge  [fontname = 'Arial', weight=1]
      Curate -> Define [style=dashed]
      }
      ")

# Save diagram
workflow %>% 
   export_svg %>% 
   charToRaw %>% 
   rsvg_png("command-files/workflow.png")
