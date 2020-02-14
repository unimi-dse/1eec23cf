# R PACKAGE - politcalparticipation


#' Upload Function
#' @description Load the data
#' @export


upload <- function(){
matrix<- read.csv2("https://goo.gl/o1zTKc", header= TRUE, sep = ",", dec = ",")
participation <- matrix[,7]*100/matrix[,4]
section<-matrix[,1]
elect_frame <-data.frame(section,participation,stringsAsFactors = FALSE)
return(elect_frame)
}

#' Frame visualization Function
#' @description visualize the data
#' @export

ParticipationForSection<-function (){
frameX<-upload()
a<-pastecs::stat.desc(frameX[,2])

return(a)
}

#' Plot Function
#' @description plot the data
#' @export

PlotFunction<- function(){
  frameY<-upload()
  output2<-ggplot2::ggplot(data=frameY, ggplot2::aes_string(x="section", y="participation"))+ ggplot2::geom_point(ggplot2::aes(col=participation),size=2)+ggplot2::scale_colour_gradient("participation",low="blue",high="red")+ggplot2::theme_minimal()+
    ggplot2::labs(x="Section",
         y="Participation",
         title = "Level of participation for section",
         subtitle = "Scatter Plot")
  return(output2)
}






