**free

ctl-opt dftactgrp(*no);

dcl-pi P5407;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P896.rpgleinc'
/copy 'qrpgleref/P1274.rpgleinc'
/copy 'qrpgleref/P1818.rpgleinc'

dcl-ds theTable extname('T833') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T833 LIMIT 1;

theCharVar = 'Hello from P5407';
dsply theCharVar;
callp localProc();
P896();
P1274();
P1818();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5407 in the procedure';
end-proc;