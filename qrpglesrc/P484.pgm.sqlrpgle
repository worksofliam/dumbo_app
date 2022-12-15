**free

ctl-opt dftactgrp(*no);

dcl-pi P484;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds theTable extname('T355') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T355 LIMIT 1;

theCharVar = 'Hello from P484';
dsply theCharVar;
callp localProc();
P470();
P158();
P38();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P484 in the procedure';
end-proc;