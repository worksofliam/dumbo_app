**free

ctl-opt dftactgrp(*no);

dcl-pi P5247;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4955.rpgleinc'
/copy 'qrpgleref/P1010.rpgleinc'
/copy 'qrpgleref/P4512.rpgleinc'

dcl-ds theTable extname('T518') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T518 LIMIT 1;

theCharVar = 'Hello from P5247';
dsply theCharVar;
callp localProc();
P4955();
P1010();
P4512();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5247 in the procedure';
end-proc;