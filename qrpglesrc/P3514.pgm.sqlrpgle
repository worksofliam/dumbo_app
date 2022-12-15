**free

ctl-opt dftactgrp(*no);

dcl-pi P3514;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P3073.rpgleinc'
/copy 'qrpgleref/P1292.rpgleinc'

dcl-ds theTable extname('T1765') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1765 LIMIT 1;

theCharVar = 'Hello from P3514';
dsply theCharVar;
callp localProc();
P14();
P3073();
P1292();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3514 in the procedure';
end-proc;