**free

ctl-opt dftactgrp(*no);

dcl-pi P3413;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P2883.rpgleinc'
/copy 'qrpgleref/P2722.rpgleinc'

dcl-ds theTable extname('T898') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T898 LIMIT 1;

theCharVar = 'Hello from P3413';
dsply theCharVar;
callp localProc();
P796();
P2883();
P2722();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3413 in the procedure';
end-proc;