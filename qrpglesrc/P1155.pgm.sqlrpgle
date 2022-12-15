**free

ctl-opt dftactgrp(*no);

dcl-pi P1155;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P983.rpgleinc'
/copy 'qrpgleref/P660.rpgleinc'
/copy 'qrpgleref/P760.rpgleinc'

dcl-ds theTable extname('T249') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T249 LIMIT 1;

theCharVar = 'Hello from P1155';
dsply theCharVar;
callp localProc();
P983();
P660();
P760();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1155 in the procedure';
end-proc;