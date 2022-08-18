function rnorm = gMvnrnd(mu,cov,n)
% function rnorm = gMvnrnd(mu,cov,n)
% multivariante randoms, SVD method of solution
% mu=mean vector
% cov=covariance matrix
% n=number of randoms to draw (default=1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: James R. Gattiker, Los Alamos National Laboratory
%
% This file was distributed as part of the GPM/SA software package
% Los Alamos Computer Code release LA-CC-06-079, C-06,114
%
% Copyright 2008.  Los Alamos National Security, LLC. This material 
% was produced under U.S. Government contract DE-AC52-06NA25396 for 
% Los Alamos National Laboratory (LANL), which is operated by Los Alamos 
% National Security, LLC for the U.S. Department of Energy. The U.S. 
% Government has rights to use, reproduce, and distribute this software.  
% NEITHER THE GOVERNMENT NOR LOS ALAMOS NATIONAL SECURITY, LLC MAKES ANY 
% WARRANTY, EXPRESS OR IMPLIED, OR ASSUMES ANY LIABILITY FOR THE USE OF 
% THIS SOFTWARE.  If software is modified to produce derivative works, 
% such modified software should be clearly marked, so as not to confuse 
% it with the version available from LANL.
% Additionally, this program is free software; you can redistribute it 
% and/or modify it under the terms of the GNU General Public License as 
% published by the Free Software Foundation; version 2.0 of the License. 
% Accordingly, this program is distributed in the hope that it will be 
% useful, but WITHOUT ANY WARRANTY; without even the implied warranty 
% of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
% General Public License for more details.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mu=mu(:);

  if ~exist('n'); n=1; end
  
  [U S V] = svd(cov);
  rnorm = repmat(mu,1,n) + U*sqrt(S) * randn(size(mu,1),n);
 
  rnorm=rnorm';

end 
