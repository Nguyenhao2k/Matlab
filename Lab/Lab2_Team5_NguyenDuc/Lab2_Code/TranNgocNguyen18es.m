function varargout = TranNgocNguyen18es(varargin)
% TRANNGOCNGUYEN18ES MATLAB code for TranNgocNguyen18es.fig
%      TRANNGOCNGUYEN18ES, by itself, creates a new TRANNGOCNGUYEN18ES or raises the existing
%      singleton*.
%
%      H = TRANNGOCNGUYEN18ES returns the handle to a new TRANNGOCNGUYEN18ES or the handle to
%      the existing singleton*.
%
%      TRANNGOCNGUYEN18ES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRANNGOCNGUYEN18ES.M with the given input arguments.
%
%      TRANNGOCNGUYEN18ES('Property','Value',...) creates a new TRANNGOCNGUYEN18ES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TranNgocNguyen18es_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TranNgocNguyen18es_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TranNgocNguyen18es

% Last Modified by GUIDE v2.5 23-Dec-2020 12:24:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TranNgocNguyen18es_OpeningFcn, ...
                   'gui_OutputFcn',  @TranNgocNguyen18es_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before TranNgocNguyen18es is made visible.
function TranNgocNguyen18es_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TranNgocNguyen18es (see VARARGIN)

% Choose default command line output for TranNgocNguyen18es
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TranNgocNguyen18es wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TranNgocNguyen18es_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Surf.
function Surf_Callback(hObject, eventdata, handles)
axes(handles.axes1);
x = -5:1e-2:5;
y = -10:1e-2:10;

[X Y] = meshgrid(x,y);
z = 5*X + sin(7*Y);
surf(X,Y,z);
% hObject    handle to Surf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Mesh.
function Mesh_Callback(hObject, eventdata, handles)
axes(handles.axes2);
x = -5:1e-2:5;
y = -10:1e-2:10;
[X Y] = meshgrid(x,y);
z = 5*X + sin(7*Y);
mesh(X,Y,z);
% hObject    handle to Mesh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Exit.
function Exit_Callback(hObject, eventdata, handles)
closereq();
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
