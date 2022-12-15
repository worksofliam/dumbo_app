**free

ctl-opt dftactgrp(*no);

dcl-pi P281;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'

dcl-ds theTable extname('T125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T125 LIMIT 1;

theCharVar = 'Hello from P281';
dsply theCharVar;
callp localProc();
P20();
P31();
P83();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P281 in the procedure';
end-proc;