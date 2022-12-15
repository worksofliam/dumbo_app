**free

ctl-opt dftactgrp(*no);

dcl-pi P146;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T104') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T104 LIMIT 1;

theCharVar = 'Hello from P146';
dsply theCharVar;
callp localProc();
P39();
P1();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P146 in the procedure';
end-proc;