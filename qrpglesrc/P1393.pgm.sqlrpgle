**free

ctl-opt dftactgrp(*no);

dcl-pi P1393;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P485.rpgleinc'
/copy 'qrpgleref/P931.rpgleinc'
/copy 'qrpgleref/P431.rpgleinc'

dcl-ds theTable extname('T308') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T308 LIMIT 1;

theCharVar = 'Hello from P1393';
dsply theCharVar;
callp localProc();
P485();
P931();
P431();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1393 in the procedure';
end-proc;