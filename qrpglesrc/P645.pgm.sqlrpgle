**free

ctl-opt dftactgrp(*no);

dcl-pi P645;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'
/copy 'qrpgleref/P446.rpgleinc'

dcl-ds theTable extname('T269') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T269 LIMIT 1;

theCharVar = 'Hello from P645';
dsply theCharVar;
callp localProc();
P242();
P503();
P446();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P645 in the procedure';
end-proc;