**free

ctl-opt dftactgrp(*no);

dcl-pi P1184;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P949.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P1120.rpgleinc'

dcl-ds theTable extname('T690') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T690 LIMIT 1;

theCharVar = 'Hello from P1184';
dsply theCharVar;
callp localProc();
P949();
P263();
P1120();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1184 in the procedure';
end-proc;