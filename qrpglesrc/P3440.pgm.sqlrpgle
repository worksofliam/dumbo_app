**free

ctl-opt dftactgrp(*no);

dcl-pi P3440;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3385.rpgleinc'
/copy 'qrpgleref/P2869.rpgleinc'
/copy 'qrpgleref/P1602.rpgleinc'

dcl-ds theTable extname('T1139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1139 LIMIT 1;

theCharVar = 'Hello from P3440';
dsply theCharVar;
callp localProc();
P3385();
P2869();
P1602();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3440 in the procedure';
end-proc;