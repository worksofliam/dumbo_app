**free

ctl-opt dftactgrp(*no);

dcl-pi P3540;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1856.rpgleinc'
/copy 'qrpgleref/P2750.rpgleinc'
/copy 'qrpgleref/P1749.rpgleinc'

dcl-ds theTable extname('T75') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T75 LIMIT 1;

theCharVar = 'Hello from P3540';
dsply theCharVar;
callp localProc();
P1856();
P2750();
P1749();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3540 in the procedure';
end-proc;