**free

ctl-opt dftactgrp(*no);

dcl-pi P478;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P437.rpgleinc'
/copy 'qrpgleref/P422.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'

dcl-ds theTable extname('T661') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T661 LIMIT 1;

theCharVar = 'Hello from P478';
dsply theCharVar;
callp localProc();
P437();
P422();
P308();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P478 in the procedure';
end-proc;