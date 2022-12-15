**free

ctl-opt dftactgrp(*no);

dcl-pi P1044;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P901.rpgleinc'
/copy 'qrpgleref/P907.rpgleinc'
/copy 'qrpgleref/P432.rpgleinc'

dcl-ds theTable extname('T50') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T50 LIMIT 1;

theCharVar = 'Hello from P1044';
dsply theCharVar;
callp localProc();
P901();
P907();
P432();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1044 in the procedure';
end-proc;