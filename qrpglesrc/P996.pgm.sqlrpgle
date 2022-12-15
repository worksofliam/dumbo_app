**free

ctl-opt dftactgrp(*no);

dcl-pi P996;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P470.rpgleinc'

dcl-ds theTable extname('T1130') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1130 LIMIT 1;

theCharVar = 'Hello from P996';
dsply theCharVar;
callp localProc();
P564();
P393();
P470();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P996 in the procedure';
end-proc;