**free

ctl-opt dftactgrp(*no);

dcl-pi P737;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P536.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'

dcl-ds theTable extname('T125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T125 LIMIT 1;

theCharVar = 'Hello from P737';
dsply theCharVar;
callp localProc();
P420();
P536();
P177();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P737 in the procedure';
end-proc;