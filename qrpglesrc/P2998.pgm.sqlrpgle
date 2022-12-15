**free

ctl-opt dftactgrp(*no);

dcl-pi P2998;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1774.rpgleinc'
/copy 'qrpgleref/P2577.rpgleinc'
/copy 'qrpgleref/P1839.rpgleinc'

dcl-ds theTable extname('T1168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1168 LIMIT 1;

theCharVar = 'Hello from P2998';
dsply theCharVar;
callp localProc();
P1774();
P2577();
P1839();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2998 in the procedure';
end-proc;