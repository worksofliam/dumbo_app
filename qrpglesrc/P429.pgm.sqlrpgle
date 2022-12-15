**free

ctl-opt dftactgrp(*no);

dcl-pi P429;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P234.rpgleinc'

dcl-ds theTable extname('T1217') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1217 LIMIT 1;

theCharVar = 'Hello from P429';
dsply theCharVar;
callp localProc();
P226();
P183();
P234();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P429 in the procedure';
end-proc;