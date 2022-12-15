**free

ctl-opt dftactgrp(*no);

dcl-pi P4826;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3966.rpgleinc'
/copy 'qrpgleref/P4036.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'

dcl-ds theTable extname('T1719') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1719 LIMIT 1;

theCharVar = 'Hello from P4826';
dsply theCharVar;
callp localProc();
P3966();
P4036();
P699();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4826 in the procedure';
end-proc;