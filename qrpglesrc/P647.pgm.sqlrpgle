**free

ctl-opt dftactgrp(*no);

dcl-pi P647;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds theTable extname('T55') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T55 LIMIT 1;

theCharVar = 'Hello from P647';
dsply theCharVar;
callp localProc();
P5();
P640();
P61();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P647 in the procedure';
end-proc;