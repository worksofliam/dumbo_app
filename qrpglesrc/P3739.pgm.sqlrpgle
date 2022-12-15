**free

ctl-opt dftactgrp(*no);

dcl-pi P3739;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P2854.rpgleinc'
/copy 'qrpgleref/P3366.rpgleinc'

dcl-ds theTable extname('T1660') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1660 LIMIT 1;

theCharVar = 'Hello from P3739';
dsply theCharVar;
callp localProc();
P144();
P2854();
P3366();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3739 in the procedure';
end-proc;