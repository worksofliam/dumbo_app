**free

ctl-opt dftactgrp(*no);

dcl-pi P829;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P290.rpgleinc'
/copy 'qrpgleref/P548.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'

dcl-ds theTable extname('T436') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T436 LIMIT 1;

theCharVar = 'Hello from P829';
dsply theCharVar;
callp localProc();
P290();
P548();
P285();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P829 in the procedure';
end-proc;