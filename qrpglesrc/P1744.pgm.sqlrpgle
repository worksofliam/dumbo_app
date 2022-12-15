**free

ctl-opt dftactgrp(*no);

dcl-pi P1744;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P1624.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds theTable extname('T50') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T50 LIMIT 1;

theCharVar = 'Hello from P1744';
dsply theCharVar;
callp localProc();
P488();
P1624();
P288();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1744 in the procedure';
end-proc;