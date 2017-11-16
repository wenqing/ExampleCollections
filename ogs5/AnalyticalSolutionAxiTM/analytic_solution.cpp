#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <numeric>

// Compile: g++ -std=c++11 -o analytical_soltion analytical_soltion.cpp 

using namespace std;

int main(int argc, char *argv[])
{
  const double E = 2.5e9;
  const double mu = 0.25;
  const double k = 5.5;
  const double R1 = 4.5;
  const double R2 = 50.0;
  const double q = 30.0;
  const double alpha = 4.2e-5;

  const double G = 0.5 * E / (1. + mu);
  const double lambda = E * mu / ((1+mu) * (1-2.0*mu));
  const double phi = lambda + 2.0 * G;
  const double beta = alpha * (3 * lambda + 2*G);
  const double K = 0.5 * q * R1 * beta / (phi * k);

  auto T = [&](const double r)
  {
    const double T0 = 25.0;
    return R1 * q * log(R2 / r) / k + T0; 
  };

  const double A1 = (lambda * K * (log(R1) -0.5) + phi * K* (log(R1)+0.5)
		     - (lambda + phi) * K * (log(R2) -0.5)
		     + beta * T(R1) ) /
    ((lambda - phi) / (R1*R1) - (lambda + phi) / (R2 *R2));
  const double A0 = 2. * K * (log(R2) - 0.5) - 2. * A1 / (R2 * R2);

  const int n = 50;
  const double dr = (R2 - R1) / n;

  ofstream os ("analytic_solutions.txt", ios::trunc);
  for (int i=0; i<=n ; i++)
  {
    const double r = R1 + dr * i;
    const double T_r = T(r);
    const double u = -K * r * (log(r) - 0.5) + 0.5 * A0 *r + A1 /r;
    const double s_r = phi * (-K * (log(r) + 0.5) + 0.5 * A0 - A1 / (r * r)) +
      lambda * (-K * (log(r) - 0.5) + 0.5 * A0 + A1 / (r * r)) - beta * T_r;

    os << r - R1 << " " << T_r << " " << u << " " << s_r << endl;  
  }

  return 0;
}
