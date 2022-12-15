**free

ctl-opt dftactgrp(*no);

dcl-pi P228;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'

dcl-ds theTable extname('T65') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T65 LIMIT 1;

theCharVar = 'Hello from P228';
dsply theCharVar;
callp localProc();
P222();
P150();
P143();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P228 in the procedure';
end-proc;