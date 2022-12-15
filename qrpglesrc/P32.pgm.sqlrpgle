**free

ctl-opt dftactgrp(*no);

dcl-pi P32;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T8') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T8 LIMIT 1;

theCharVar = 'Hello from P32';
dsply theCharVar;
callp localProc();
P28();
P23();
P4();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P32 in the procedure';
end-proc;