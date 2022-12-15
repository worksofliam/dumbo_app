**free

ctl-opt dftactgrp(*no);

dcl-pi P81;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds theTable extname('T201') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T201 LIMIT 1;

theCharVar = 'Hello from P81';
dsply theCharVar;
callp localProc();
P63();
P35();
P7();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P81 in the procedure';
end-proc;