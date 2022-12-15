**free

ctl-opt dftactgrp(*no);

dcl-pi P1386;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P988.rpgleinc'
/copy 'qrpgleref/P548.rpgleinc'

dcl-ds theTable extname('T424') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T424 LIMIT 1;

theCharVar = 'Hello from P1386';
dsply theCharVar;
callp localProc();
P522();
P988();
P548();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1386 in the procedure';
end-proc;