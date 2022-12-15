**free

ctl-opt dftactgrp(*no);

dcl-pi P113;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds theTable extname('T138') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T138 LIMIT 1;

theCharVar = 'Hello from P113';
dsply theCharVar;
callp localProc();
P26();
P74();
P49();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P113 in the procedure';
end-proc;