**free

ctl-opt dftactgrp(*no);

dcl-pi P636;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P508.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'

dcl-ds theTable extname('T460') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T460 LIMIT 1;

theCharVar = 'Hello from P636';
dsply theCharVar;
callp localProc();
P391();
P508();
P266();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P636 in the procedure';
end-proc;