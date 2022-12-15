**free

ctl-opt dftactgrp(*no);

dcl-pi P2768;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2487.rpgleinc'
/copy 'qrpgleref/P2469.rpgleinc'
/copy 'qrpgleref/P1483.rpgleinc'

dcl-ds theTable extname('T11') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T11 LIMIT 1;

theCharVar = 'Hello from P2768';
dsply theCharVar;
callp localProc();
P2487();
P2469();
P1483();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2768 in the procedure';
end-proc;