**free

ctl-opt dftactgrp(*no);

dcl-pi P3317;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P3072.rpgleinc'
/copy 'qrpgleref/P2135.rpgleinc'

dcl-ds theTable extname('T849') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T849 LIMIT 1;

theCharVar = 'Hello from P3317';
dsply theCharVar;
callp localProc();
P127();
P3072();
P2135();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3317 in the procedure';
end-proc;