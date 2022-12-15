**free

ctl-opt dftactgrp(*no);

dcl-pi P1475;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P873.rpgleinc'

dcl-ds theTable extname('T538') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T538 LIMIT 1;

theCharVar = 'Hello from P1475';
dsply theCharVar;
callp localProc();
P172();
P324();
P873();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1475 in the procedure';
end-proc;