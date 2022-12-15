**free

ctl-opt dftactgrp(*no);

dcl-pi P3111;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P866.rpgleinc'

dcl-ds theTable extname('T1469') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1469 LIMIT 1;

theCharVar = 'Hello from P3111';
dsply theCharVar;
callp localProc();
P110();
P131();
P866();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3111 in the procedure';
end-proc;