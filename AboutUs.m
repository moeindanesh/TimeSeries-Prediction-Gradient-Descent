function varargout = AboutUs(varargin)
% ABOUTUS MATLAB code for AboutUs.fig
%      ABOUTUS, by itself, creates a new ABOUTUS or raises the existing
%      singleton*.
%
%      H = ABOUTUS returns the handle to a new ABOUTUS or the handle to
%      the existing singleton*.
%
%      ABOUTUS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ABOUTUS.M with the given input arguments.
%
%      ABOUTUS('Property','Value',...) creates a new ABOUTUS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AboutUs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AboutUs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AboutUs

% Last Modified by GUIDE v2.5 02-Jan-2019 00:06:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AboutUs_OpeningFcn, ...
                   'gui_OutputFcn',  @AboutUs_OutputFcn, ...
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


% --- Executes just before AboutUs is made visible.
function AboutUs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AboutUs (see VARARGIN)

% Choose default command line output for AboutUs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AboutUs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AboutUs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
