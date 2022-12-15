**free

ctl-opt dftactgrp(*no);

dcl-pi P1459;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P760.rpgleinc'
/copy 'qrpgleref/P1159.rpgleinc'

dcl-ds theTable extname('T949') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T949 LIMIT 1;

theCharVar = 'Hello from P1459';
dsply theCharVar;
callp localProc();
P760();
P1159();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1459 in the procedure';
end-proc;