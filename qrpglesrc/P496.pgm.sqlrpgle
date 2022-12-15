**free

ctl-opt dftactgrp(*no);

dcl-pi P496;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'

dcl-ds theTable extname('T83') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T83 LIMIT 1;

theCharVar = 'Hello from P496';
dsply theCharVar;
callp localProc();
P470();
P9();
P90();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P496 in the procedure';
end-proc;