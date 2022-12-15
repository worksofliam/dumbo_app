**free

ctl-opt dftactgrp(*no);

dcl-pi P1569;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P618.rpgleinc'
/copy 'qrpgleref/P834.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'

dcl-ds theTable extname('T150') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T150 LIMIT 1;

theCharVar = 'Hello from P1569';
dsply theCharVar;
callp localProc();
P618();
P834();
P362();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1569 in the procedure';
end-proc;