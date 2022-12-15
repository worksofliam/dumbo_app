**free

ctl-opt dftactgrp(*no);

dcl-pi P1684;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P969.rpgleinc'
/copy 'qrpgleref/P1149.rpgleinc'
/copy 'qrpgleref/P722.rpgleinc'

dcl-ds theTable extname('T864') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T864 LIMIT 1;

theCharVar = 'Hello from P1684';
dsply theCharVar;
callp localProc();
P969();
P1149();
P722();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1684 in the procedure';
end-proc;