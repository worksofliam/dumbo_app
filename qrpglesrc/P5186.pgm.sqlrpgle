**free

ctl-opt dftactgrp(*no);

dcl-pi P5186;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1074.rpgleinc'
/copy 'qrpgleref/P2044.rpgleinc'
/copy 'qrpgleref/P2768.rpgleinc'

dcl-ds theTable extname('T896') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T896 LIMIT 1;

theCharVar = 'Hello from P5186';
dsply theCharVar;
callp localProc();
P1074();
P2044();
P2768();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5186 in the procedure';
end-proc;