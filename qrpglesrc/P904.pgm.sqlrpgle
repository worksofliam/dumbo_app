**free

ctl-opt dftactgrp(*no);

dcl-pi P904;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P375.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'

dcl-ds theTable extname('T1241') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1241 LIMIT 1;

theCharVar = 'Hello from P904';
dsply theCharVar;
callp localProc();
P375();
P313();
P486();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P904 in the procedure';
end-proc;