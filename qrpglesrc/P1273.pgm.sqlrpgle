**free

ctl-opt dftactgrp(*no);

dcl-pi P1273;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P662.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'

dcl-ds theTable extname('T140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T140 LIMIT 1;

theCharVar = 'Hello from P1273';
dsply theCharVar;
callp localProc();
P102();
P662();
P161();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1273 in the procedure';
end-proc;