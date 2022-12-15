**free

ctl-opt dftactgrp(*no);

dcl-pi P4055;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P763.rpgleinc'
/copy 'qrpgleref/P1996.rpgleinc'
/copy 'qrpgleref/P1098.rpgleinc'

dcl-ds theTable extname('T1710') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1710 LIMIT 1;

theCharVar = 'Hello from P4055';
dsply theCharVar;
callp localProc();
P763();
P1996();
P1098();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4055 in the procedure';
end-proc;