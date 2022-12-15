**free

ctl-opt dftactgrp(*no);

dcl-pi P1068;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P731.rpgleinc'
/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'

dcl-ds theTable extname('T335') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T335 LIMIT 1;

theCharVar = 'Hello from P1068';
dsply theCharVar;
callp localProc();
P731();
P242();
P294();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1068 in the procedure';
end-proc;