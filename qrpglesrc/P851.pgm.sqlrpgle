**free

ctl-opt dftactgrp(*no);

dcl-pi P851;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P435.rpgleinc'
/copy 'qrpgleref/P344.rpgleinc'
/copy 'qrpgleref/P275.rpgleinc'

dcl-ds theTable extname('T614') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T614 LIMIT 1;

theCharVar = 'Hello from P851';
dsply theCharVar;
callp localProc();
P435();
P344();
P275();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P851 in the procedure';
end-proc;