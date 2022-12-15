**free

ctl-opt dftactgrp(*no);

dcl-pi P2305;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1360.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'
/copy 'qrpgleref/P1508.rpgleinc'

dcl-ds theTable extname('T445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T445 LIMIT 1;

theCharVar = 'Hello from P2305';
dsply theCharVar;
callp localProc();
P1360();
P296();
P1508();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2305 in the procedure';
end-proc;