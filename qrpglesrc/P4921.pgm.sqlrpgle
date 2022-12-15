**free

ctl-opt dftactgrp(*no);

dcl-pi P4921;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4858.rpgleinc'
/copy 'qrpgleref/P4710.rpgleinc'
/copy 'qrpgleref/P1436.rpgleinc'

dcl-ds theTable extname('T1864') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1864 LIMIT 1;

theCharVar = 'Hello from P4921';
dsply theCharVar;
callp localProc();
P4858();
P4710();
P1436();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4921 in the procedure';
end-proc;