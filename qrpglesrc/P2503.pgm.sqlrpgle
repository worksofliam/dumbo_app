**free

ctl-opt dftactgrp(*no);

dcl-pi P2503;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P1992.rpgleinc'
/copy 'qrpgleref/P1945.rpgleinc'

dcl-ds theTable extname('T1677') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1677 LIMIT 1;

theCharVar = 'Hello from P2503';
dsply theCharVar;
callp localProc();
P221();
P1992();
P1945();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2503 in the procedure';
end-proc;