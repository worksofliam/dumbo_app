**free

ctl-opt dftactgrp(*no);

dcl-pi P622;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P468.rpgleinc'
/copy 'qrpgleref/P415.rpgleinc'

dcl-ds theTable extname('T337') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T337 LIMIT 1;

theCharVar = 'Hello from P622';
dsply theCharVar;
callp localProc();
P479();
P468();
P415();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P622 in the procedure';
end-proc;