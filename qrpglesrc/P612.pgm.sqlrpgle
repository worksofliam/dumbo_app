**free

ctl-opt dftactgrp(*no);

dcl-pi P612;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'

dcl-ds theTable extname('T681') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T681 LIMIT 1;

theCharVar = 'Hello from P612';
dsply theCharVar;
callp localProc();
P371();
P98();
P251();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P612 in the procedure';
end-proc;