**free

ctl-opt dftactgrp(*no);

dcl-pi P973;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P607.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P694.rpgleinc'

dcl-ds theTable extname('T77') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T77 LIMIT 1;

theCharVar = 'Hello from P973';
dsply theCharVar;
callp localProc();
P607();
P263();
P694();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P973 in the procedure';
end-proc;