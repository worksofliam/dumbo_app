**free

ctl-opt dftactgrp(*no);

dcl-pi P377;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'

dcl-ds theTable extname('T172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T172 LIMIT 1;

theCharVar = 'Hello from P377';
dsply theCharVar;
callp localProc();
P282();
P165();
P148();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P377 in the procedure';
end-proc;