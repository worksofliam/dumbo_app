**free

ctl-opt dftactgrp(*no);

dcl-pi P1476;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P636.rpgleinc'

dcl-ds theTable extname('T1235') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1235 LIMIT 1;

theCharVar = 'Hello from P1476';
dsply theCharVar;
callp localProc();
P218();
P637();
P636();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1476 in the procedure';
end-proc;