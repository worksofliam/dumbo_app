**free

ctl-opt dftactgrp(*no);

dcl-pi P1562;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P791.rpgleinc'
/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'

dcl-ds theTable extname('T1664') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1664 LIMIT 1;

theCharVar = 'Hello from P1562';
dsply theCharVar;
callp localProc();
P791();
P527();
P143();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1562 in the procedure';
end-proc;