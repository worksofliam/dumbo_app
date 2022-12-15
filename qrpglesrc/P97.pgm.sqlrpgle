**free

ctl-opt dftactgrp(*no);

dcl-pi P97;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T234') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T234 LIMIT 1;

theCharVar = 'Hello from P97';
dsply theCharVar;
callp localProc();
P5();
P51();
P19();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P97 in the procedure';
end-proc;