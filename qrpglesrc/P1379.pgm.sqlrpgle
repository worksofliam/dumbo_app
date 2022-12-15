**free

ctl-opt dftactgrp(*no);

dcl-pi P1379;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P1203.rpgleinc'

dcl-ds theTable extname('T3') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T3 LIMIT 1;

theCharVar = 'Hello from P1379';
dsply theCharVar;
callp localProc();
P196();
P52();
P1203();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1379 in the procedure';
end-proc;