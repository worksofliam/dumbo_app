**free

ctl-opt dftactgrp(*no);

dcl-pi P1353;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P1222.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'

dcl-ds theTable extname('T66') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T66 LIMIT 1;

theCharVar = 'Hello from P1353';
dsply theCharVar;
callp localProc();
P161();
P1222();
P299();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1353 in the procedure';
end-proc;