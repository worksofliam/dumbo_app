**free

ctl-opt dftactgrp(*no);

dcl-pi P3744;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1844.rpgleinc'
/copy 'qrpgleref/P3344.rpgleinc'
/copy 'qrpgleref/P2728.rpgleinc'

dcl-ds theTable extname('T1847') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1847 LIMIT 1;

theCharVar = 'Hello from P3744';
dsply theCharVar;
callp localProc();
P1844();
P3344();
P2728();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3744 in the procedure';
end-proc;