**free

ctl-opt dftactgrp(*no);

dcl-pi P3707;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1964.rpgleinc'
/copy 'qrpgleref/P1942.rpgleinc'
/copy 'qrpgleref/P1418.rpgleinc'

dcl-ds theTable extname('T1076') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1076 LIMIT 1;

theCharVar = 'Hello from P3707';
dsply theCharVar;
callp localProc();
P1964();
P1942();
P1418();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3707 in the procedure';
end-proc;