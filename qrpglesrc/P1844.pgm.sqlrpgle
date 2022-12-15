**free

ctl-opt dftactgrp(*no);

dcl-pi P1844;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P1599.rpgleinc'
/copy 'qrpgleref/P771.rpgleinc'

dcl-ds theTable extname('T504') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T504 LIMIT 1;

theCharVar = 'Hello from P1844';
dsply theCharVar;
callp localProc();
P165();
P1599();
P771();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1844 in the procedure';
end-proc;