**free

ctl-opt dftactgrp(*no);

dcl-pi P5456;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2557.rpgleinc'
/copy 'qrpgleref/P3436.rpgleinc'
/copy 'qrpgleref/P3736.rpgleinc'

dcl-ds theTable extname('T990') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T990 LIMIT 1;

theCharVar = 'Hello from P5456';
dsply theCharVar;
callp localProc();
P2557();
P3436();
P3736();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5456 in the procedure';
end-proc;