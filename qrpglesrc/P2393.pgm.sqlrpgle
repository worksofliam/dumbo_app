**free

ctl-opt dftactgrp(*no);

dcl-pi P2393;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1507.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P1984.rpgleinc'

dcl-ds theTable extname('T1157') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1157 LIMIT 1;

theCharVar = 'Hello from P2393';
dsply theCharVar;
callp localProc();
P1507();
P17();
P1984();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2393 in the procedure';
end-proc;