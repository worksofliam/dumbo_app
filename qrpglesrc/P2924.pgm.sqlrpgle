**free

ctl-opt dftactgrp(*no);

dcl-pi P2924;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P1715.rpgleinc'
/copy 'qrpgleref/P1599.rpgleinc'

dcl-ds theTable extname('T1117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1117 LIMIT 1;

theCharVar = 'Hello from P2924';
dsply theCharVar;
callp localProc();
P527();
P1715();
P1599();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2924 in the procedure';
end-proc;