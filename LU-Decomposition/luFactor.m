% Cameron Denison
% 4/2/19
% Mech 105
function [L,U,P] = luFactor(A)
%Inputs:
%• A - coefficient matrix
%Outputs:
%• L - lower triangular matrix
%• U - upper triangular matrix
%• P - the pivot matrix
%[L,U,P]= luFactor(A) calculates the LU decomposition of the array A using
%pivoting. This is done by setting up the identity matrices with the
%correct zeros and ones. They are then applied to the A array using partial
%pivoting. These are used to create the L matrix and the U Matrix.
%setting up the identity matrices
[K,K]=size(A);

U=zeros(K,K);

L=eye(K,K);

P=L

PV=(0:K-1)';
for k=1:K,
    % Pivoting the matrices
    % Switching rows K and the pivot row in U
    [~,piv_row]=max(abs(U(k:K,k)));
    
    piv_row=piv_row+(k-1);
    
    R=PV(k); PV(k)=PV(piv_row);
    
    PV(piv_row)=R;
    
    R=L(k,1:k-1);
    % Switching rows K and the pivot row in L
    L(k,1:k-1)=L(piv_row,1:k-1);
    
    L(piv_row,1:k-1)=R;
    
    R=U(k,k:end); 
    
    U(k,k:end)=U(piv_row,k:end);
    
    U(piv_row, k: end)=R;
    
    L(k,k)=1;
    % Determining the L and U matrices
    for j=(1+k):K
       z= U(j,k)/U(k,k);
       U(j,:)=U(j,:)-U(k,:)*z;
       L(j,k)=z;
    end
end
P=zeros(K,K);
P(PV(:)*K+(1:K)')=1;
%to test if L*U=A ~ the input matrix
Test=L*U
%Displaying A in the command window
A
