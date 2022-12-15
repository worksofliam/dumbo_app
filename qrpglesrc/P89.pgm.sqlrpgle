**free

ctl-opt dftactgrp(*no);

dcl-pi P89;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds theTable extname('T128') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T128 LIMIT 1;

theCharVar = 'Hello from P89';
dsply theCharVar;
callp localProc();
P49();
P31();
P24();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P89 in the procedure';
end-proc;