**free

ctl-opt dftactgrp(*no);

dcl-pi P1643;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P611.rpgleinc'
/copy 'qrpgleref/P547.rpgleinc'
/copy 'qrpgleref/P1444.rpgleinc'

dcl-ds theTable extname('T963') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T963 LIMIT 1;

theCharVar = 'Hello from P1643';
dsply theCharVar;
callp localProc();
P611();
P547();
P1444();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1643 in the procedure';
end-proc;