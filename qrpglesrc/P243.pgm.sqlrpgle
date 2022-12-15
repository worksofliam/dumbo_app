**free

ctl-opt dftactgrp(*no);

dcl-pi P243;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'

dcl-ds theTable extname('T1046') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1046 LIMIT 1;

theCharVar = 'Hello from P243';
dsply theCharVar;
callp localProc();
P89();
P87();
P164();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P243 in the procedure';
end-proc;