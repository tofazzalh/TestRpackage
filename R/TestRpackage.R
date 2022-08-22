
#' This is a test function for calculating mean and variance
#'
#' This function calculates mean and variance for a set of observation
#' @param sample_data A sample set of observations
#' @param output_folder Name of the output folder
#'
#' @importFrom stats var
#' @importFrom utils write.table
#'
#' @return Mean and variance for the sample observation
#' @export
#'
#' @examples
#' #Loading a example data
#' sample_data<-data(example_data)
#' sample_data<-example_data
#'
#' #Calculating mean and variance and the result will be generated
#' #to output_folder
#' output_folder<-tempdir()
#' sample_mean_var(example_data, output_folder)
#'
sample_mean_var<-function(sample_data, output_folder){
  Average<-mean(sample_data)
  Variance<-var(sample_data)
  Output<-data.frame(Average, Variance)
  write.table(Output, file=file.path(output_folder,"sample_mean_variance.txt"), row.names = F, quote=F, sep="\t")
}
