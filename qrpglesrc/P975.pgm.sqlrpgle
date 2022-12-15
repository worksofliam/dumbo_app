**free

ctl-opt dftactgrp(*no);

dcl-pi P975;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P543.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T282') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T282 LIMIT 1;

theCharVar = 'Hello from P975';
dsply theCharVar;
callp localProc();
P543();
P113();
P39();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P975 in the procedure';
end-proc;