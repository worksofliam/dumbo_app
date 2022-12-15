**free

ctl-opt dftactgrp(*no);

dcl-pi P679;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P672.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'

dcl-ds theTable extname('T409') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T409 LIMIT 1;

theCharVar = 'Hello from P679';
dsply theCharVar;
callp localProc();
P672();
P621();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P679 in the procedure';
end-proc;