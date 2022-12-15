**free

ctl-opt dftactgrp(*no);

dcl-pi P581;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'

dcl-ds theTable extname('T20') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T20 LIMIT 1;

theCharVar = 'Hello from P581';
dsply theCharVar;
callp localProc();
P526();
P491();
P93();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P581 in the procedure';
end-proc;