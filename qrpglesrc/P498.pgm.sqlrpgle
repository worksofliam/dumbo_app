**free

ctl-opt dftactgrp(*no);

dcl-pi P498;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'

dcl-ds theTable extname('T1020') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1020 LIMIT 1;

theCharVar = 'Hello from P498';
dsply theCharVar;
callp localProc();
P85();
P173();
P332();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P498 in the procedure';
end-proc;