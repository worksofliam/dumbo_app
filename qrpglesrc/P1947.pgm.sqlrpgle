**free

ctl-opt dftactgrp(*no);

dcl-pi P1947;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1155.rpgleinc'
/copy 'qrpgleref/P1455.rpgleinc'
/copy 'qrpgleref/P752.rpgleinc'

dcl-ds theTable extname('T1652') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1652 LIMIT 1;

theCharVar = 'Hello from P1947';
dsply theCharVar;
callp localProc();
P1155();
P1455();
P752();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1947 in the procedure';
end-proc;