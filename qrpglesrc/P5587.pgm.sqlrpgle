**free

ctl-opt dftactgrp(*no);

dcl-pi P5587;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P3358.rpgleinc'
/copy 'qrpgleref/P757.rpgleinc'

dcl-ds theTable extname('T1623') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1623 LIMIT 1;

theCharVar = 'Hello from P5587';
dsply theCharVar;
callp localProc();
P198();
P3358();
P757();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5587 in the procedure';
end-proc;