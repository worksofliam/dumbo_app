**free

ctl-opt dftactgrp(*no);

dcl-pi P630;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'

dcl-ds theTable extname('T463') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T463 LIMIT 1;

theCharVar = 'Hello from P630';
dsply theCharVar;
callp localProc();
P148();
P97();
P221();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P630 in the procedure';
end-proc;