**free

ctl-opt dftactgrp(*no);

dcl-pi P4625;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3157.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P1812.rpgleinc'

dcl-ds theTable extname('T983') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T983 LIMIT 1;

theCharVar = 'Hello from P4625';
dsply theCharVar;
callp localProc();
P3157();
P277();
P1812();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4625 in the procedure';
end-proc;