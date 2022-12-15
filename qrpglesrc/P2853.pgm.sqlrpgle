**free

ctl-opt dftactgrp(*no);

dcl-pi P2853;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P407.rpgleinc'
/copy 'qrpgleref/P2499.rpgleinc'
/copy 'qrpgleref/P1208.rpgleinc'

dcl-ds theTable extname('T854') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T854 LIMIT 1;

theCharVar = 'Hello from P2853';
dsply theCharVar;
callp localProc();
P407();
P2499();
P1208();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2853 in the procedure';
end-proc;