**free

ctl-opt dftactgrp(*no);

dcl-pi P603;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P370.rpgleinc'
/copy 'qrpgleref/P436.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'

dcl-ds theTable extname('T325') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T325 LIMIT 1;

theCharVar = 'Hello from P603';
dsply theCharVar;
callp localProc();
P370();
P436();
P20();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P603 in the procedure';
end-proc;