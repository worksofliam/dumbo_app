**free

ctl-opt dftactgrp(*no);

dcl-pi P701;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P632.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P577.rpgleinc'

dcl-ds theTable extname('T1311') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1311 LIMIT 1;

theCharVar = 'Hello from P701';
dsply theCharVar;
callp localProc();
P632();
P270();
P577();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P701 in the procedure';
end-proc;