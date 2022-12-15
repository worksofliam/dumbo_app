**free

ctl-opt dftactgrp(*no);

dcl-pi P88;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'

dcl-ds theTable extname('T1017') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1017 LIMIT 1;

theCharVar = 'Hello from P88';
dsply theCharVar;
callp localProc();
P14();
P69();
P47();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P88 in the procedure';
end-proc;