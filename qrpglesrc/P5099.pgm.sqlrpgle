**free

ctl-opt dftactgrp(*no);

dcl-pi P5099;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4409.rpgleinc'
/copy 'qrpgleref/P1397.rpgleinc'
/copy 'qrpgleref/P330.rpgleinc'

dcl-ds theTable extname('T34') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T34 LIMIT 1;

theCharVar = 'Hello from P5099';
dsply theCharVar;
callp localProc();
P4409();
P1397();
P330();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5099 in the procedure';
end-proc;