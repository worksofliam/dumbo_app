**free

ctl-opt dftactgrp(*no);

dcl-pi P3252;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P1933.rpgleinc'
/copy 'qrpgleref/P1024.rpgleinc'

dcl-ds theTable extname('T521') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T521 LIMIT 1;

theCharVar = 'Hello from P3252';
dsply theCharVar;
callp localProc();
P234();
P1933();
P1024();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3252 in the procedure';
end-proc;