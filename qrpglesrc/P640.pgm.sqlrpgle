**free

ctl-opt dftactgrp(*no);

dcl-pi P640;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P261.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'

dcl-ds theTable extname('T404') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T404 LIMIT 1;

theCharVar = 'Hello from P640';
dsply theCharVar;
callp localProc();
P261();
P491();
P205();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P640 in the procedure';
end-proc;