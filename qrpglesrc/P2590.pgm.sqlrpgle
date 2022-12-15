**free

ctl-opt dftactgrp(*no);

dcl-pi P2590;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1715.rpgleinc'
/copy 'qrpgleref/P2308.rpgleinc'
/copy 'qrpgleref/P1233.rpgleinc'

dcl-ds theTable extname('T602') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T602 LIMIT 1;

theCharVar = 'Hello from P2590';
dsply theCharVar;
callp localProc();
P1715();
P2308();
P1233();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2590 in the procedure';
end-proc;