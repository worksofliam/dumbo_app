**free

ctl-opt dftactgrp(*no);

dcl-pi P1004;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P985.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P973.rpgleinc'

dcl-ds theTable extname('T103') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T103 LIMIT 1;

theCharVar = 'Hello from P1004';
dsply theCharVar;
callp localProc();
P985();
P91();
P973();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1004 in the procedure';
end-proc;