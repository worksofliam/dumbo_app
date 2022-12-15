**free

ctl-opt dftactgrp(*no);

dcl-pi P258;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds theTable extname('T68') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T68 LIMIT 1;

theCharVar = 'Hello from P258';
dsply theCharVar;
callp localProc();
P241();
P244();
P198();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P258 in the procedure';
end-proc;