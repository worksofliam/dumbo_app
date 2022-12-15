**free

ctl-opt dftactgrp(*no);

dcl-pi P4445;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3289.rpgleinc'
/copy 'qrpgleref/P3165.rpgleinc'
/copy 'qrpgleref/P4177.rpgleinc'

dcl-ds theTable extname('T374') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T374 LIMIT 1;

theCharVar = 'Hello from P4445';
dsply theCharVar;
callp localProc();
P3289();
P3165();
P4177();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4445 in the procedure';
end-proc;