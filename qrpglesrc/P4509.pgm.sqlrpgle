**free

ctl-opt dftactgrp(*no);

dcl-pi P4509;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P4268.rpgleinc'
/copy 'qrpgleref/P602.rpgleinc'

dcl-ds theTable extname('T1749') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1749 LIMIT 1;

theCharVar = 'Hello from P4509';
dsply theCharVar;
callp localProc();
P56();
P4268();
P602();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4509 in the procedure';
end-proc;