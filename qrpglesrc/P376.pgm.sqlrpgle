**free

ctl-opt dftactgrp(*no);

dcl-pi P376;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'

dcl-ds theTable extname('T75') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T75 LIMIT 1;

theCharVar = 'Hello from P376';
dsply theCharVar;
callp localProc();
P226();
P372();
P189();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P376 in the procedure';
end-proc;