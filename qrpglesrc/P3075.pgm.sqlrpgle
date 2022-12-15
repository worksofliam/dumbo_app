**free

ctl-opt dftactgrp(*no);

dcl-pi P3075;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P528.rpgleinc'
/copy 'qrpgleref/P2791.rpgleinc'
/copy 'qrpgleref/P2275.rpgleinc'

dcl-ds theTable extname('T1137') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1137 LIMIT 1;

theCharVar = 'Hello from P3075';
dsply theCharVar;
callp localProc();
P528();
P2791();
P2275();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3075 in the procedure';
end-proc;