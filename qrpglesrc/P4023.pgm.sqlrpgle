**free

ctl-opt dftactgrp(*no);

dcl-pi P4023;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2295.rpgleinc'
/copy 'qrpgleref/P1373.rpgleinc'
/copy 'qrpgleref/P1120.rpgleinc'

dcl-ds theTable extname('T1864') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1864 LIMIT 1;

theCharVar = 'Hello from P4023';
dsply theCharVar;
callp localProc();
P2295();
P1373();
P1120();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4023 in the procedure';
end-proc;