**free

ctl-opt dftactgrp(*no);

dcl-pi P2601;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P515.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'

dcl-ds theTable extname('T109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T109 LIMIT 1;

theCharVar = 'Hello from P2601';
dsply theCharVar;
callp localProc();
P515();
P19();
P365();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2601 in the procedure';
end-proc;