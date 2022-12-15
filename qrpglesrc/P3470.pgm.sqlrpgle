**free

ctl-opt dftactgrp(*no);

dcl-pi P3470;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2727.rpgleinc'
/copy 'qrpgleref/P2926.rpgleinc'
/copy 'qrpgleref/P1300.rpgleinc'

dcl-ds theTable extname('T64') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T64 LIMIT 1;

theCharVar = 'Hello from P3470';
dsply theCharVar;
callp localProc();
P2727();
P2926();
P1300();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3470 in the procedure';
end-proc;