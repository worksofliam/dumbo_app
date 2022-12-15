**free

ctl-opt dftactgrp(*no);

dcl-pi P232;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'

dcl-ds theTable extname('T339') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T339 LIMIT 1;

theCharVar = 'Hello from P232';
dsply theCharVar;
callp localProc();
P110();
P152();
P107();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P232 in the procedure';
end-proc;