**free

ctl-opt dftactgrp(*no);

dcl-pi P1347;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1161.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'

dcl-ds theTable extname('T1103') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1103 LIMIT 1;

theCharVar = 'Hello from P1347';
dsply theCharVar;
callp localProc();
P1161();
P272();
P399();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1347 in the procedure';
end-proc;