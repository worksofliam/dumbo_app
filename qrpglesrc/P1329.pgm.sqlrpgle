**free

ctl-opt dftactgrp(*no);

dcl-pi P1329;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'

dcl-ds theTable extname('T822') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T822 LIMIT 1;

theCharVar = 'Hello from P1329';
dsply theCharVar;
callp localProc();
P7();
P83();
P451();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1329 in the procedure';
end-proc;