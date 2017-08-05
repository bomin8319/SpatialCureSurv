// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <RcppArmadillo.h>
#include <Rcpp.h>

using namespace Rcpp;

// llikWeibull
double llikWeibull(arma::vec Y, arma::vec eXB, arma::vec alpha, arma::vec C, double lambda);
RcppExport SEXP _SpatialCure_llikWeibull(SEXP YSEXP, SEXP eXBSEXP, SEXP alphaSEXP, SEXP CSEXP, SEXP lambdaSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::vec >::type Y(YSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type eXB(eXBSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type alpha(alphaSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type C(CSEXP);
    Rcpp::traits::input_parameter< double >::type lambda(lambdaSEXP);
    rcpp_result_gen = Rcpp::wrap(llikWeibull(Y, eXB, alpha, C, lambda));
    return rcpp_result_gen;
END_RCPP
}
// llikWeibull2
double llikWeibull2(arma::vec Y, arma::vec eXB, arma::vec alpha, arma::vec C, double lambda);
RcppExport SEXP _SpatialCure_llikWeibull2(SEXP YSEXP, SEXP eXBSEXP, SEXP alphaSEXP, SEXP CSEXP, SEXP lambdaSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::vec >::type Y(YSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type eXB(eXBSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type alpha(alphaSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type C(CSEXP);
    Rcpp::traits::input_parameter< double >::type lambda(lambdaSEXP);
    rcpp_result_gen = Rcpp::wrap(llikWeibull2(Y, eXB, alpha, C, lambda));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_SpatialCure_llikWeibull", (DL_FUNC) &_SpatialCure_llikWeibull, 5},
    {"_SpatialCure_llikWeibull2", (DL_FUNC) &_SpatialCure_llikWeibull2, 5},
    {NULL, NULL, 0}
};

RcppExport void R_init_SpatialCure(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
