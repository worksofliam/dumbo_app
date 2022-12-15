**free

ctl-opt dftactgrp(*no);

dcl-pi P69;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P69';
dsply theCharVar;
callp localProc();
P20();
P19();
P49();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P69 in the procedure';
end-proc;