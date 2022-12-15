**free

ctl-opt dftactgrp(*no);

dcl-pi P538;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P483.rpgleinc'

dcl-ds theTable extname('T117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T117 LIMIT 1;

theCharVar = 'Hello from P538';
dsply theCharVar;
callp localProc();
P283();
P1();
P483();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P538 in the procedure';
end-proc;