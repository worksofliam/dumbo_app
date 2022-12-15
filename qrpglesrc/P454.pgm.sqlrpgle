**free

ctl-opt dftactgrp(*no);

dcl-pi P454;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P349.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'

dcl-ds theTable extname('T280') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T280 LIMIT 1;

theCharVar = 'Hello from P454';
dsply theCharVar;
callp localProc();
P349();
P213();
P98();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P454 in the procedure';
end-proc;