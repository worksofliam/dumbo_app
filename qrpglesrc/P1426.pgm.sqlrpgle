**free

ctl-opt dftactgrp(*no);

dcl-pi P1426;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P633.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'
/copy 'qrpgleref/P891.rpgleinc'

dcl-ds theTable extname('T10') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T10 LIMIT 1;

theCharVar = 'Hello from P1426';
dsply theCharVar;
callp localProc();
P633();
P438();
P891();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1426 in the procedure';
end-proc;