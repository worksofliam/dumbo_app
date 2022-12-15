**free

ctl-opt dftactgrp(*no);

dcl-pi P113;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'

dcl-ds theTable extname('T890') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T890 LIMIT 1;

theCharVar = 'Hello from P113';
dsply theCharVar;
callp localProc();
P27();
P51();
P99();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P113 in the procedure';
end-proc;