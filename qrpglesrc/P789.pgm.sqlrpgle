**free

ctl-opt dftactgrp(*no);

dcl-pi P789;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P733.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'

dcl-ds theTable extname('T368') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T368 LIMIT 1;

theCharVar = 'Hello from P789';
dsply theCharVar;
callp localProc();
P733();
P402();
P365();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P789 in the procedure';
end-proc;