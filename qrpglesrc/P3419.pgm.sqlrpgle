**free

ctl-opt dftactgrp(*no);

dcl-pi P3419;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2100.rpgleinc'
/copy 'qrpgleref/P1093.rpgleinc'
/copy 'qrpgleref/P1567.rpgleinc'

dcl-ds theTable extname('T875') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T875 LIMIT 1;

theCharVar = 'Hello from P3419';
dsply theCharVar;
callp localProc();
P2100();
P1093();
P1567();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3419 in the procedure';
end-proc;