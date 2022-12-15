**free

ctl-opt dftactgrp(*no);

dcl-pi P2072;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1169.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P1834.rpgleinc'

dcl-ds theTable extname('T729') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T729 LIMIT 1;

theCharVar = 'Hello from P2072';
dsply theCharVar;
callp localProc();
P1169();
P40();
P1834();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2072 in the procedure';
end-proc;