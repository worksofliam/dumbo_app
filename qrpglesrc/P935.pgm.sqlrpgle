**free

ctl-opt dftactgrp(*no);

dcl-pi P935;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P912.rpgleinc'
/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'

dcl-ds theTable extname('T1491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1491 LIMIT 1;

theCharVar = 'Hello from P935';
dsply theCharVar;
callp localProc();
P912();
P465();
P569();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P935 in the procedure';
end-proc;