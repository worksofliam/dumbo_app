**free

ctl-opt dftactgrp(*no);

dcl-pi P1882;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1576.rpgleinc'
/copy 'qrpgleref/P1710.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'

dcl-ds theTable extname('T665') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T665 LIMIT 1;

theCharVar = 'Hello from P1882';
dsply theCharVar;
callp localProc();
P1576();
P1710();
P274();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1882 in the procedure';
end-proc;