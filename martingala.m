function varargout = martingala(varargin)
% MARTINGALA MATLAB code for martingala.fig
%      MARTINGALA, by itself, creates a new MARTINGALA or raises the existing
%      singleton*.
%
%      H = MARTINGALA returns the handle to a new MARTINGALA or the handle to
%      the existing singleton*.
%
%      MARTINGALA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MARTINGALA.M with the given input arguments.
%
%      MARTINGALA('Property','Value',...) creates a new MARTINGALA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before martingala_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to martingala_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help martingala

% Last Modified by GUIDE v2.5 25-May-2019 10:16:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @martingala_OpeningFcn, ...
                   'gui_OutputFcn',  @martingala_OutputFcn, ...
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


% --- Executes just before martingala is made visible.
function martingala_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to martingala (see VARARGIN)

% Choose default command line output for martingala
handles.output = hObject;

handles.results = [];
pReiniciar_Callback(handles.pReiniciar , eventdata, handles);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes martingala wait for user response (see UIRESUME)
% uiwait(handles.figura);


% --- Outputs from this function are returned to the command line.
function varargout = martingala_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function eNumero_Callback(hObject, eventdata, handles)
% hObject    handle to eNumero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eNumero as text
%        str2double(get(hObject,'String')) returns contents of eNumero as a double


% --- Executes during object creation, after setting all properties.
function eNumero_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eNumero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eBase_Callback(hObject, eventdata, handles)
% hObject    handle to eBase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eBase as text
%        str2double(get(hObject,'String')) returns contents of eBase as a double


% --- Executes during object creation, after setting all properties.
function eBase_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eBase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eMaxima_Callback(hObject, eventdata, handles)
% hObject    handle to eMaxima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eMaxima as text
%        str2double(get(hObject,'String')) returns contents of eMaxima as a double


% --- Executes on button press in cMaxima.
function cMaxima_Callback(hObject, eventdata, handles)
% hObject    handle to cMaxima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cMaxima

if hObject.Value
    handles.eMaxima.Enable = 'On';
else
    handles.eMaxima.Enable = 'Off';
end

% --- Executes during object creation, after setting all properties.
function eMaxima_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eMaxima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pReiniciar.
function pReiniciar_Callback(hObject, eventdata, handles)
% hObject    handle to pReiniciar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.eNumero.String = '10000';
handles.eBase.String = '10';
handles.cMaxima.Value = false;
handles.eMaxima.String = '';
handles.eMaxima.Enable = 'Off';

handles.pImagen.Enable = 'Off';
handles.pExcel.Enable = 'Off';

cla(handles.aResults);

% --- Executes on button press in pSimular.
function pSimular_Callback(hObject, eventdata, handles)
% hObject    handle to pSimular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

g = str2double(handles.eNumero.String);
b = str2double(handles.eBase.String);

if handles.cMaxima.Value
    max_bet = str2double(handles.eMaxima.String);
else
    max_bet = Inf;
end

streak = 0;
result = zeros(1, g);

for i = 1:g
    % Apuesta en base a la racha
    bet = b * 2^(streak - 1);
    
    % Limitar la apuesta a la máxima permitida
    if bet > max_bet
        bet = max_bet;
    end
    
    % Simular una partida
    if rand() < 18/37
        streak = 0;
        result(i) = bet;
    else
        streak = streak + 1;
        result(i) = -bet;
    end
end

plot(handles.aResults, cumsum(result))
xlabel(handles.aResults, 'Juegos');
ylabel(handles.aResults, 'Beneficio acumulado');

if isinf(max_bet)
    title(handles.aResults, 'No hay apuesta máxima');
else
    title(handles.aResults, sprintf('Apuesta máxima %d', max_bet));
end

handles.pImagen.Enable = 'On';
handles.pExcel.Enable = 'On';

handles.results = [result; cumsum(result)]';
guidata(hObject, handles);

% --- Executes on button press in pImagen.
function pImagen_Callback(hObject, eventdata, handles)
% hObject    handle to pImagen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename, pathname] = uiputfile( ...
       {'*.jpg','Imágenes JPG (*.jpg)'}, ...
       'Selecciona un archivo', 'Martingala.jpg');

if ischar(filename)
    F = getframe(handles.aResults);
    Image = frame2im(F);
    imwrite(Image, fullfile(pathname, filename));
end

% --- Executes on button press in pExcel.
function pExcel_Callback(hObject, eventdata, handles)
% hObject    handle to pExcel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename, pathname] = uiputfile( ...
       {'*.xls','Archivo Excel (*.xls)'}, ...
       'Selecciona un archivo', 'Martingala.xls');

if ischar(filename)
    xlswrite(fullfile(pathname, filename), handles.results);
end
