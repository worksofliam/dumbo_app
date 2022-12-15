**free

ctl-opt dftactgrp(*no);

dcl-pi P398;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'

dcl-ds theTable extname('T213') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T213 LIMIT 1;

theCharVar = 'Hello from P398';
dsply theCharVar;
callp localProc();
P331();
P387();
P375();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P398 in the procedure';
end-proc;