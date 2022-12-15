**free

ctl-opt dftactgrp(*no);

dcl-pi P638;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'

dcl-ds theTable extname('T462') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T462 LIMIT 1;

theCharVar = 'Hello from P638';
dsply theCharVar;
callp localProc();
P334();
P101();
P187();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P638 in the procedure';
end-proc;