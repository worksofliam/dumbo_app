**free

ctl-opt dftactgrp(*no);

dcl-pi P1536;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P405.rpgleinc'

dcl-ds theTable extname('T102') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T102 LIMIT 1;

theCharVar = 'Hello from P1536';
dsply theCharVar;
callp localProc();
P110();
P125();
P405();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1536 in the procedure';
end-proc;