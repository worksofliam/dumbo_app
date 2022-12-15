**free

ctl-opt dftactgrp(*no);

dcl-pi P5339;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P254.rpgleinc'
/copy 'qrpgleref/P2086.rpgleinc'
/copy 'qrpgleref/P3664.rpgleinc'

dcl-ds theTable extname('T822') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T822 LIMIT 1;

theCharVar = 'Hello from P5339';
dsply theCharVar;
callp localProc();
P254();
P2086();
P3664();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5339 in the procedure';
end-proc;