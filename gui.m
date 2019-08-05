function varargout = gui(varargin)
% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 01-Jan-2019 23:53:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
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


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;





% --------------------------------------------------------------------



function NumRules_Callback(hObject, eventdata, handles)
% hObject    handle to NumRules (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NumRules as text
%        str2double(get(hObject,'String')) returns contents of NumRules as a double


% --- Executes during object creation, after setting all properties.
function NumRules_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NumRules (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Alpha_Callback(hObject, eventdata, handles)
% hObject    handle to Alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Alpha as text
%        str2double(get(hObject,'String')) returns contents of Alpha as a double


% --- Executes during object creation, after setting all properties.
function Alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NumIterData_Callback(hObject, eventdata, handles)
% hObject    handle to NumIterData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NumIterData as text
%        str2double(get(hObject,'String')) returns contents of NumIterData as a double


% --- Executes during object creation, after setting all properties.
function NumIterData_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NumIterData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FEPR_Callback(hObject, eventdata, handles)
% hObject    handle to FEPR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FEPR as text
%        str2double(get(hObject,'String')) returns contents of FEPR as a double


% --- Executes during object creation, after setting all properties.
function FEPR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FEPR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in RepeatAgain.
function RepeatAgain_Callback(hObject, eventdata, handles)
% hObject    handle to RepeatAgain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns RepeatAgain contents as cell array
%        contents{get(hObject,'Value')} returns selected item from RepeatAgain
if(get(handles.RepeatAgain, 'Value') == 2)
    set(handles.NumIterAllData, 'String', '1');
    set(handles.NumIterAllData, 'Enable', 'off');
end
if(get(handles.RepeatAgain, 'Value') == 1)
    set(handles.NumIterAllData, 'Enable', 'on');
end

   


% --- Executes during object creation, after setting all properties.
function RepeatAgain_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RepeatAgain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function NumDataPair_Callback(hObject, eventdata, handles)
% hObject    handle to NumDataPair (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NumDataPair as text
%        str2double(get(hObject,'String')) returns contents of NumDataPair as a double


% --- Executes during object creation, after setting all properties.
function NumDataPair_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NumDataPair (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function NumSample_Callback(hObject, eventdata, handles)
% hObject    handle to NumSample (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NumSample as text
%        str2double(get(hObject,'String')) returns contents of NumSample as a double


% --- Executes during object creation, after setting all properties.
function NumSample_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NumSample (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NumIterAllData_Callback(hObject, eventdata, handles)
% hObject    handle to NumIterAllData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NumIterAllData as text
%        str2double(get(hObject,'String')) returns contents of NumIterAllData as a double


% --- Executes during object creation, after setting all properties.
function NumIterAllData_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NumIterAllData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InputsNum_Callback(hObject, eventdata, handles)
% hObject    handle to InputsNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InputsNum as text
%        str2double(get(hObject,'String')) returns contents of InputsNum as a double


% --- Executes during object creation, after setting all properties.
function InputsNum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InputsNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in AboutUs.
function AboutUs_Callback(hObject, eventdata, handles)
% hObject    handle to AboutUs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
AboutUs

%set(handles.RepeatAgain_label, 'String', get(handles.NumDataPair, 'String'));

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if(str2double(get(handles.NumSample, 'String')) <= str2double(get(handles.NumDataPair, 'String')))
    msgbox('Number of Samples must be greater than DataPairs', 'Error','error');
else
    if(get(handles.RepeatAgain, 'Value') == 2)
        CycleCheck = false;
    end
    if(get(handles.RepeatAgain, 'Value') == 1)
        CycleCheck = true;
    end
    Main(str2double(get(handles.NumRules, 'String')), str2double(get(handles.Alpha, 'String')), str2double(get(handles.NumIterData, 'String')), str2double(get(handles.FEPR, 'String')), CycleCheck, str2double(get(handles.NumIterAllData, 'String')), str2double(get(handles.NumDataPair, 'String')), str2double(get(handles.NumSample, 'String')), str2double(get(handles.InputsNum, 'String')))
end
