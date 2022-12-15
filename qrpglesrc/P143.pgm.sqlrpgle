**free

ctl-opt dftactgrp(*no);

dcl-pi P143;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'

dcl-ds theTable extname('T1640') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1640 LIMIT 1;

theCharVar = 'Hello from P143';
dsply theCharVar;
callp localProc();
P83();
P29();
P120();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P143 in the procedure';
end-proc;