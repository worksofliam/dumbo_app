**free

ctl-opt dftactgrp(*no);

dcl-pi P598;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P536.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'

dcl-ds theTable extname('T523') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T523 LIMIT 1;

theCharVar = 'Hello from P598';
dsply theCharVar;
callp localProc();
P536();
P183();
P71();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P598 in the procedure';
end-proc;