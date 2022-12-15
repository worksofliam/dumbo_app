**free

ctl-opt dftactgrp(*no);

dcl-pi P3705;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3289.rpgleinc'
/copy 'qrpgleref/P2041.rpgleinc'
/copy 'qrpgleref/P1859.rpgleinc'

dcl-ds theTable extname('T957') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T957 LIMIT 1;

theCharVar = 'Hello from P3705';
dsply theCharVar;
callp localProc();
P3289();
P2041();
P1859();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3705 in the procedure';
end-proc;