**free

ctl-opt dftactgrp(*no);

dcl-pi P5536;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2654.rpgleinc'
/copy 'qrpgleref/P1445.rpgleinc'
/copy 'qrpgleref/P3242.rpgleinc'

dcl-ds theTable extname('T135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T135 LIMIT 1;

theCharVar = 'Hello from P5536';
dsply theCharVar;
callp localProc();
P2654();
P1445();
P3242();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5536 in the procedure';
end-proc;