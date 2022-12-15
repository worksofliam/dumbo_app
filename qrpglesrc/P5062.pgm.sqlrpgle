**free

ctl-opt dftactgrp(*no);

dcl-pi P5062;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2555.rpgleinc'
/copy 'qrpgleref/P895.rpgleinc'
/copy 'qrpgleref/P3539.rpgleinc'

dcl-ds theTable extname('T1082') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1082 LIMIT 1;

theCharVar = 'Hello from P5062';
dsply theCharVar;
callp localProc();
P2555();
P895();
P3539();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5062 in the procedure';
end-proc;