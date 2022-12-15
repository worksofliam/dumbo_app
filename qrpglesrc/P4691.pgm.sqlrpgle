**free

ctl-opt dftactgrp(*no);

dcl-pi P4691;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1330.rpgleinc'
/copy 'qrpgleref/P1676.rpgleinc'
/copy 'qrpgleref/P1201.rpgleinc'

dcl-ds theTable extname('T22') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T22 LIMIT 1;

theCharVar = 'Hello from P4691';
dsply theCharVar;
callp localProc();
P1330();
P1676();
P1201();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4691 in the procedure';
end-proc;