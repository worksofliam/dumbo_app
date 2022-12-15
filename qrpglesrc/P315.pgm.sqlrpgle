**free

ctl-opt dftactgrp(*no);

dcl-pi P315;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'

dcl-ds theTable extname('T296') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T296 LIMIT 1;

theCharVar = 'Hello from P315';
dsply theCharVar;
callp localProc();
P300();
P11();
P226();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P315 in the procedure';
end-proc;