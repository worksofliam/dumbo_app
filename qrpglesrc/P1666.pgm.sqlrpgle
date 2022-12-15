**free

ctl-opt dftactgrp(*no);

dcl-pi P1666;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P855.rpgleinc'
/copy 'qrpgleref/P675.rpgleinc'
/copy 'qrpgleref/P822.rpgleinc'

dcl-ds theTable extname('T1123') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1123 LIMIT 1;

theCharVar = 'Hello from P1666';
dsply theCharVar;
callp localProc();
P855();
P675();
P822();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1666 in the procedure';
end-proc;