**free

ctl-opt dftactgrp(*no);

dcl-pi P5005;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P4838.rpgleinc'

dcl-ds theTable extname('T1766') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1766 LIMIT 1;

theCharVar = 'Hello from P5005';
dsply theCharVar;
callp localProc();
P74();
P127();
P4838();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5005 in the procedure';
end-proc;