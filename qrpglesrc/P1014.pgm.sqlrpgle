**free

ctl-opt dftactgrp(*no);

dcl-pi P1014;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P913.rpgleinc'
/copy 'qrpgleref/P997.rpgleinc'

dcl-ds theTable extname('T396') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T396 LIMIT 1;

theCharVar = 'Hello from P1014';
dsply theCharVar;
callp localProc();
P47();
P913();
P997();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1014 in the procedure';
end-proc;