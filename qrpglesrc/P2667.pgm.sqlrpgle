**free

ctl-opt dftactgrp(*no);

dcl-pi P2667;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2570.rpgleinc'
/copy 'qrpgleref/P1948.rpgleinc'
/copy 'qrpgleref/P1994.rpgleinc'

dcl-ds theTable extname('T37') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T37 LIMIT 1;

theCharVar = 'Hello from P2667';
dsply theCharVar;
callp localProc();
P2570();
P1948();
P1994();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2667 in the procedure';
end-proc;