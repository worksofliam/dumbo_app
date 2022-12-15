**free

ctl-opt dftactgrp(*no);

dcl-pi P2628;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P946.rpgleinc'
/copy 'qrpgleref/P1879.rpgleinc'
/copy 'qrpgleref/P2553.rpgleinc'

dcl-ds theTable extname('T1841') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1841 LIMIT 1;

theCharVar = 'Hello from P2628';
dsply theCharVar;
callp localProc();
P946();
P1879();
P2553();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2628 in the procedure';
end-proc;