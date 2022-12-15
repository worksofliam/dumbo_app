**free

ctl-opt dftactgrp(*no);

dcl-pi P3557;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P887.rpgleinc'
/copy 'qrpgleref/P1393.rpgleinc'

dcl-ds theTable extname('T797') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T797 LIMIT 1;

theCharVar = 'Hello from P3557';
dsply theCharVar;
callp localProc();
P288();
P887();
P1393();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3557 in the procedure';
end-proc;