**free

ctl-opt dftactgrp(*no);

dcl-pi P3383;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1515.rpgleinc'
/copy 'qrpgleref/P2941.rpgleinc'
/copy 'qrpgleref/P722.rpgleinc'

dcl-ds theTable extname('T1240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1240 LIMIT 1;

theCharVar = 'Hello from P3383';
dsply theCharVar;
callp localProc();
P1515();
P2941();
P722();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3383 in the procedure';
end-proc;