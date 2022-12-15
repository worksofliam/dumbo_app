**free

ctl-opt dftactgrp(*no);

dcl-pi P1694;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P681.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P1479.rpgleinc'

dcl-ds theTable extname('T480') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T480 LIMIT 1;

theCharVar = 'Hello from P1694';
dsply theCharVar;
callp localProc();
P681();
P240();
P1479();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1694 in the procedure';
end-proc;