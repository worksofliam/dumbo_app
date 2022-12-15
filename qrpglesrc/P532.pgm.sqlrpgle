**free

ctl-opt dftactgrp(*no);

dcl-pi P532;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P273.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'

dcl-ds theTable extname('T392') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T392 LIMIT 1;

theCharVar = 'Hello from P532';
dsply theCharVar;
callp localProc();
P273();
P250();
P103();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P532 in the procedure';
end-proc;