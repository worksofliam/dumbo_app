**free

ctl-opt dftactgrp(*no);

dcl-pi P2556;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P1098.rpgleinc'
/copy 'qrpgleref/P1177.rpgleinc'

dcl-ds theTable extname('T845') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T845 LIMIT 1;

theCharVar = 'Hello from P2556';
dsply theCharVar;
callp localProc();
P398();
P1098();
P1177();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2556 in the procedure';
end-proc;