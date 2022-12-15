**free

ctl-opt dftactgrp(*no);

dcl-pi P2985;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1295.rpgleinc'
/copy 'qrpgleref/P1516.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'

dcl-ds theTable extname('T1769') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1769 LIMIT 1;

theCharVar = 'Hello from P2985';
dsply theCharVar;
callp localProc();
P1295();
P1516();
P1051();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2985 in the procedure';
end-proc;