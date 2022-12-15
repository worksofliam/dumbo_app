**free

ctl-opt dftactgrp(*no);

dcl-pi P428;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P405.rpgleinc'

dcl-ds theTable extname('T225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T225 LIMIT 1;

theCharVar = 'Hello from P428';
dsply theCharVar;
callp localProc();
P334();
P63();
P405();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P428 in the procedure';
end-proc;