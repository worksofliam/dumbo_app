**free

ctl-opt dftactgrp(*no);

dcl-pi P454;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P330.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'

dcl-ds theTable extname('T135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T135 LIMIT 1;

theCharVar = 'Hello from P454';
dsply theCharVar;
callp localProc();
P330();
P28();
P33();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P454 in the procedure';
end-proc;