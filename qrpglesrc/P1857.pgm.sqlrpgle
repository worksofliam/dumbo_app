**free

ctl-opt dftactgrp(*no);

dcl-pi P1857;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1640.rpgleinc'
/copy 'qrpgleref/P1682.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'

dcl-ds theTable extname('T190') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T190 LIMIT 1;

theCharVar = 'Hello from P1857';
dsply theCharVar;
callp localProc();
P1640();
P1682();
P360();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1857 in the procedure';
end-proc;