**free

ctl-opt dftactgrp(*no);

dcl-pi P588;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P483.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds theTable extname('T87') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T87 LIMIT 1;

theCharVar = 'Hello from P588';
dsply theCharVar;
callp localProc();
P71();
P483();
P94();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P588 in the procedure';
end-proc;