**free

ctl-opt dftactgrp(*no);

dcl-pi P3404;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1316.rpgleinc'
/copy 'qrpgleref/P2963.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds theTable extname('T408') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T408 LIMIT 1;

theCharVar = 'Hello from P3404';
dsply theCharVar;
callp localProc();
P1316();
P2963();
P10();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3404 in the procedure';
end-proc;