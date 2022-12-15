**free

ctl-opt dftactgrp(*no);

dcl-pi P3467;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P653.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P1478.rpgleinc'

dcl-ds theTable extname('T166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T166 LIMIT 1;

theCharVar = 'Hello from P3467';
dsply theCharVar;
callp localProc();
P653();
P84();
P1478();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3467 in the procedure';
end-proc;