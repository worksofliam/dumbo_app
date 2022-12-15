**free

ctl-opt dftactgrp(*no);

dcl-pi P435;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P206.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P422.rpgleinc'

dcl-ds theTable extname('T735') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T735 LIMIT 1;

theCharVar = 'Hello from P435';
dsply theCharVar;
callp localProc();
P206();
P130();
P422();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P435 in the procedure';
end-proc;