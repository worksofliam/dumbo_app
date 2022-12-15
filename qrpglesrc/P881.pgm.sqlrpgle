**free

ctl-opt dftactgrp(*no);

dcl-pi P881;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P762.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'

dcl-ds theTable extname('T921') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T921 LIMIT 1;

theCharVar = 'Hello from P881';
dsply theCharVar;
callp localProc();
P762();
P228();
P376();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P881 in the procedure';
end-proc;