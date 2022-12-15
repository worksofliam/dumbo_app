**free

ctl-opt dftactgrp(*no);

dcl-pi P526;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P504.rpgleinc'

dcl-ds theTable extname('T93') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T93 LIMIT 1;

theCharVar = 'Hello from P526';
dsply theCharVar;
callp localProc();
P6();
P292();
P504();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P526 in the procedure';
end-proc;