#' main UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_main_ui <- function(id){
  ns <- NS(id)

  sidebar <- dashboardSidebar(
    width = 250,
    sidebarMenu(
      menuItem(
        text = "Consumo de Energia",
        tabName = "consumo_titulo",
        startExpanded = TRUE,
        menuSubItem("Panorama - Consumo Total", tabName = "consumo"),
        menuSubItem("Panorama - Consumo Cativo", tabName = "consumo_cativo"),
        menuSubItem("Panorama - Consumo Livre", tabName = "consumo_livre")
      ),
      menuItem(
        text = "Número de Consumidores em Dezembro",
        tabName = "num_consumidores_titulo", 
        startExpanded = FALSE,
        menuSubItem("Panorama - Consumidores Totais", tabName = "consumidores"),
        menuSubItem("Panorama - Consumidores Cativos", tabName = "consumidores_cativo"),
        menuSubItem("Panorama - Consumidores Livres", tabName = "consumidores_livre")
      )
    )
  )
  
  body <- dashboardBody()
  
  dashboardPage(
    dashboardHeader(),
    # dashboardHeaderPlus(
    #   
    #   title = HTML('<a href="https://www.epe.gov.br/pt"> <img class=logo-epe src=logo_epe_branca_sem_texto.png width="70" > </a> Anuário Interativo'),
    #   titleWidth = 270
    # ),
    sidebar,
    body
  )
  
}
    
#' main Server Functions
#'
#' @noRd 
mod_main_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_main_ui("main_ui_1")
    
## To be copied in the server
# mod_main_server("main_ui_1")
