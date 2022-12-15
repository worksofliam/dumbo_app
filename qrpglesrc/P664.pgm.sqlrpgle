**free

ctl-opt dftactgrp(*no);

dcl-pi P664;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P589.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'

dcl-ds theTable extname('T441') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T441 LIMIT 1;

theCharVar = 'Hello from P664';
dsply theCharVar;
callp localProc();
P589();
P270();
P393();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P664 in the procedure';
end-proc;