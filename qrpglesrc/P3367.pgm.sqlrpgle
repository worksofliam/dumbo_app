**free

ctl-opt dftactgrp(*no);

dcl-pi P3367;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'

dcl-ds theTable extname('T1414') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1414 LIMIT 1;

theCharVar = 'Hello from P3367';
dsply theCharVar;
callp localProc();
P9();
P47();
P328();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3367 in the procedure';
end-proc;