**free

ctl-opt dftactgrp(*no);

dcl-pi P4995;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3751.rpgleinc'
/copy 'qrpgleref/P1977.rpgleinc'
/copy 'qrpgleref/P437.rpgleinc'

dcl-ds theTable extname('T15') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T15 LIMIT 1;

theCharVar = 'Hello from P4995';
dsply theCharVar;
callp localProc();
P3751();
P1977();
P437();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4995 in the procedure';
end-proc;