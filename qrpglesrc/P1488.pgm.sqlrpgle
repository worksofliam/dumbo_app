**free

ctl-opt dftactgrp(*no);

dcl-pi P1488;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1211.rpgleinc'
/copy 'qrpgleref/P511.rpgleinc'
/copy 'qrpgleref/P812.rpgleinc'

dcl-ds theTable extname('T906') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T906 LIMIT 1;

theCharVar = 'Hello from P1488';
dsply theCharVar;
callp localProc();
P1211();
P511();
P812();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1488 in the procedure';
end-proc;