**free

ctl-opt dftactgrp(*no);

dcl-pi P697;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P317.rpgleinc'
/copy 'qrpgleref/P627.rpgleinc'
/copy 'qrpgleref/P676.rpgleinc'

dcl-ds theTable extname('T27') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T27 LIMIT 1;

theCharVar = 'Hello from P697';
dsply theCharVar;
callp localProc();
P317();
P627();
P676();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P697 in the procedure';
end-proc;