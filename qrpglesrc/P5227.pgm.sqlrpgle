**free

ctl-opt dftactgrp(*no);

dcl-pi P5227;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P468.rpgleinc'
/copy 'qrpgleref/P2653.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'

dcl-ds theTable extname('T355') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T355 LIMIT 1;

theCharVar = 'Hello from P5227';
dsply theCharVar;
callp localProc();
P468();
P2653();
P729();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5227 in the procedure';
end-proc;