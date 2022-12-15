**free

ctl-opt dftactgrp(*no);

dcl-pi P5494;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3233.rpgleinc'
/copy 'qrpgleref/P4580.rpgleinc'
/copy 'qrpgleref/P5392.rpgleinc'

dcl-ds theTable extname('T1699') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1699 LIMIT 1;

theCharVar = 'Hello from P5494';
dsply theCharVar;
callp localProc();
P3233();
P4580();
P5392();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5494 in the procedure';
end-proc;