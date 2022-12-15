**free

ctl-opt dftactgrp(*no);

dcl-pi P2050;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P607.rpgleinc'
/copy 'qrpgleref/P948.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'

dcl-ds theTable extname('T853') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T853 LIMIT 1;

theCharVar = 'Hello from P2050';
dsply theCharVar;
callp localProc();
P607();
P948();
P161();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2050 in the procedure';
end-proc;