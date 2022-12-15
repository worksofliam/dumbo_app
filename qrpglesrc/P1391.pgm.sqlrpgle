**free

ctl-opt dftactgrp(*no);

dcl-pi P1391;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P335.rpgleinc'
/copy 'qrpgleref/P1155.rpgleinc'
/copy 'qrpgleref/P661.rpgleinc'

dcl-ds theTable extname('T325') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T325 LIMIT 1;

theCharVar = 'Hello from P1391';
dsply theCharVar;
callp localProc();
P335();
P1155();
P661();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1391 in the procedure';
end-proc;