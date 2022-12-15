**free

ctl-opt dftactgrp(*no);

dcl-pi P285;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T98') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T98 LIMIT 1;

theCharVar = 'Hello from P285';
dsply theCharVar;
callp localProc();
P186();
P121();
P6();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P285 in the procedure';
end-proc;