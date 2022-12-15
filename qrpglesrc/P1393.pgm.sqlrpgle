**free

ctl-opt dftactgrp(*no);

dcl-pi P1393;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1155.rpgleinc'
/copy 'qrpgleref/P1063.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'

dcl-ds theTable extname('T638') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T638 LIMIT 1;

theCharVar = 'Hello from P1393';
dsply theCharVar;
callp localProc();
P1155();
P1063();
P324();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1393 in the procedure';
end-proc;