**free

ctl-opt dftactgrp(*no);

dcl-pi P1236;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P539.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'

dcl-ds theTable extname('T1619') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1619 LIMIT 1;

theCharVar = 'Hello from P1236';
dsply theCharVar;
callp localProc();
P539();
P525();
P365();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1236 in the procedure';
end-proc;