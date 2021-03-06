%% osimVec3ToArray converts OpenSim Vec3() to a 1x3 Matlab vector
% Input   = OpenSim Vec3()
% Output  = 1x3 Matlab matrix

% ----------------------------------------------------------------------- %
% The OpenSim API is a toolkit for musculoskeletal modeling and           %
% simulation. See http://opensim.stanford.edu and the NOTICE file         %
% for more information. OpenSim is developed at Stanford University       %
% and supported by the US National Institutes of Health (U54 GM072970,    %
% R24 HD065690) and by DARPA through the Warrior Web program.             %
%                                                                         %
% Copyright (c) 2005-2016 Stanford University and the Authors             %
% Author(s): James Dunne                                                  %
%                                                                         %
% Licensed under the Apache License, Version 2.0 (the "License");         %
% you may not use this file except in compliance with the License.        %
% You may obtain a copy of the License at                                 %
% http://www.apache.org/licenses/LICENSE-2.0.                             %
%                                                                         %
% Unless required by applicable law or agreed to in writing, software     %
% distributed under the License is distributed on an "AS IS" BASIS,       %
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or         %
% implied. See the License for the specific language governing            %
% permissions and limitations under the License.                          %
% ----------------------------------------------------------------------- %
function vec = osimVecToArray(p)
% import Java Libraries
import org.opensim.modeling.*
% Check the input type
if strcmp(class(p), 'org.opensim.modeling.Vector')
     % Convert the input Opensim Vec3 to a Matlab Vector
     vec = [p.get(0) p.get(1) p.get(2) p.get(3) p.get(4) p.get(5) p.get(6) p.get(7) p.get(8) p.get(9) p.get(10) p.get(11) p.get(12) p.get(13) p.get(14) p.get(15) p.get(16) p.get(17)];
else
    error('Incorrect class input. Must be type org.opensim.modeling.Vec3') 
end