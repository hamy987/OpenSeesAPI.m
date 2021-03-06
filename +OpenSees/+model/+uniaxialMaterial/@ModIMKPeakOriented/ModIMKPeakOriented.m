classdef ModIMKPeakOriented < OpenSees.model.uniaxialMaterial
    
    properties
        
        format = '%0.8f';   % string format
        
        % required
        K0 = [];            % elastic stiffness
        as_Plus = [];       % strain hardening ratio for positive loading direction
        as_Neg = [];        % strain hardening ratio for negative loading direction
        My_Plus = [];       % effective yield strength for positive loading direction
        My_Neg = [];        % effective yield strength for negative loading direction
        Lambda_S = [];      % cyclic deterioration parameter for strength deterioration
        Lambda_C = [];      % cyclic deterioration parameter for post-capping strength deterioration
        Lambda_A = [];      % cyclic deterioration parameter for acceleration reloading stiffness deterioration
        Lambda_K = [];      % cyclic deterioration parameter for unloading stiffness deterioration
        c_S = [];           % rate of strength deterioration
        c_C = [];           % rate of post-capping strength deterioration
        c_A = [];           % rate of accelerated reloading deterioration
        c_K = [];           % rate of unloading stiffness deterioration
        theta_p_Plus = [];  % precapping rotation for positive loading direction (i.e., plastic rotation capacity)
        theta_p_Neg = [];   % precapping rotation for negative loading direction (i.e., plastic rotation capacity) (positive value)
        theta_pc_Plus = []; % postcapping rotation for postiive loading direction
        theta_pc_Neg = [];  % postcapping rotation for negative loading direction (positive value)
        Res_Pos = [];       % residual strength ratio for positive loading direction
        Res_Neg = [];       % residual strength ratio for negative loading direction (positive value)
        theta_u_Plus = [];  % ultimate rotation capacity for positive loading direction 
        theta_u_Neg = [];   % ultimate rotation capacity for negative loading direction (positive value) 
        D_Plus = [];        % rate of cyclic deterioration in positive loading direction
        D_Neg = [];         % rate of cyclic deterioration in negative loading direction
        
    end
    
    methods
        
        function obj = ModIMKPeakOriented(tag,K0,as_Plus,as_Neg,...
                My_Plus,My_Neg,...
                Lambda_S,Lambda_C,Lambda_A,Lambda_K,...
                c_S,c_C,c_A,c_K,...
                theta_p_Plus,theta_p_Neg,theta_pc_Plus,theta_pc_Neg,...
                Res_Pos,Res_Neg,...
                theta_u_Plus,theta_u_Neg,...
                D_Plus,D_Neg)
            
            % store variables
            obj.tag = tag;
            obj.K0 = K0;
            obj.as_Plus = as_Plus;
            obj.as_Neg = as_Neg;
            obj.My_Plus = My_Plus;
            obj.My_Neg = My_Neg;
            obj.Lambda_S = Lambda_S;
            obj.Lambda_C = Lambda_C;
            obj.Lambda_A = Lambda_A;
            obj.Lambda_K = Lambda_K;
            obj.c_S = c_S;
            obj.c_C = c_C;
            obj.c_A = c_A;
            obj.c_K = c_K;
            obj.theta_p_Plus = theta_p_Plus;
            obj.theta_p_Neg = theta_p_Neg;
            obj.theta_pc_Plus = theta_pc_Plus;
            obj.theta_pc_Neg = theta_pc_Neg;
            obj.Res_Pos = Res_Pos;
            obj.Res_Neg = Res_Neg;
            obj.theta_u_Plus = theta_u_Plus;
            obj.theta_u_Neg = theta_u_Neg;
            obj.D_Plus = D_Plus;
            obj.D_Neg = D_Neg;
            
            % command line open
            obj.cmdLine = ['uniaxialMaterial ModIMKPeakOriented ' num2str(obj.tag) ' '...
                           num2str(obj.K0,obj.format) ' ' ...
                           num2str(obj.as_Plus,obj.format) ' ' ...
                           num2str(obj.as_Neg,obj.format) ' ' ...
                           num2str(obj.My_Plus,obj.format) ' ' ...
                           num2str(obj.My_Neg,obj.format) ' ' ...
                           num2str(obj.Lambda_S,obj.format) ' ' ...
                           num2str(obj.Lambda_C,obj.format) ' ' ...
                           num2str(obj.Lambda_A,obj.format) ' ' ...
                           num2str(obj.Lambda_K,obj.format) ' ' ...
                           num2str(obj.c_S,obj.format) ' ' ...
                           num2str(obj.c_C,obj.format) ' ' ...
                           num2str(obj.c_A,obj.format) ' ' ...
                           num2str(obj.c_K,obj.format) ' ' ...
                           num2str(obj.theta_p_Plus,obj.format) ' ' ...
                           num2str(obj.theta_p_Neg,obj.format) ' ' ...
                           num2str(obj.theta_pc_Plus,obj.format) ' ' ...
                           num2str(obj.theta_pc_Neg,obj.format) ' ' ...
                           num2str(obj.Res_Pos,obj.format) ' ' ...
                           num2str(obj.Res_Neg,obj.format) ' ' ...
                           num2str(obj.theta_u_Plus,obj.format) ' ' ...
                           num2str(obj.theta_u_Neg,obj.format) ' ' ...
                           num2str(obj.D_Plus,obj.format) ' ' ...
                           num2str(obj.D_Neg,obj.format)];
                       
        end
                           
    end
    
end