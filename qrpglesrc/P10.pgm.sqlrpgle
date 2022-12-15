**free

ctl-opt dftactgrp(*no);

dcl-pi P10;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T298') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T298 LIMIT 1;

theCharVar = 'Hello from P10';
dsply theCharVar;
callp localProc();
P2();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P10 in the procedure';
end-proc;