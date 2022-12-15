**free

ctl-opt dftactgrp(*no);

dcl-pi P1801;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1735.rpgleinc'
/copy 'qrpgleref/P1171.rpgleinc'
/copy 'qrpgleref/P1630.rpgleinc'

dcl-ds theTable extname('T129') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T129 LIMIT 1;

theCharVar = 'Hello from P1801';
dsply theCharVar;
callp localProc();
P1735();
P1171();
P1630();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1801 in the procedure';
end-proc;