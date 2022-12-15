**free

ctl-opt dftactgrp(*no);

dcl-pi P461;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P244.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'

dcl-ds theTable extname('T2') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T2 LIMIT 1;

theCharVar = 'Hello from P461';
dsply theCharVar;
callp localProc();
P244();
P385();
P102();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P461 in the procedure';
end-proc;