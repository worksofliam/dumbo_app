**free

ctl-opt dftactgrp(*no);

dcl-pi P1619;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P476.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'

dcl-ds theTable extname('T21') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T21 LIMIT 1;

theCharVar = 'Hello from P1619';
dsply theCharVar;
callp localProc();
P383();
P476();
P59();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1619 in the procedure';
end-proc;