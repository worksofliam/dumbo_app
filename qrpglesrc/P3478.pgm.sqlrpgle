**free

ctl-opt dftactgrp(*no);

dcl-pi P3478;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2092.rpgleinc'
/copy 'qrpgleref/P1357.rpgleinc'
/copy 'qrpgleref/P1623.rpgleinc'

dcl-ds theTable extname('T364') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T364 LIMIT 1;

theCharVar = 'Hello from P3478';
dsply theCharVar;
callp localProc();
P2092();
P1357();
P1623();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3478 in the procedure';
end-proc;