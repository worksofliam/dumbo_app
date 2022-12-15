**free

ctl-opt dftactgrp(*no);

dcl-pi P387;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'

dcl-ds theTable extname('T1066') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1066 LIMIT 1;

theCharVar = 'Hello from P387';
dsply theCharVar;
callp localProc();
P26();
P298();
P58();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P387 in the procedure';
end-proc;