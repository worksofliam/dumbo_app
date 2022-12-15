**free

ctl-opt dftactgrp(*no);

dcl-pi P3004;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1488.rpgleinc'
/copy 'qrpgleref/P1475.rpgleinc'
/copy 'qrpgleref/P1535.rpgleinc'

dcl-ds theTable extname('T908') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T908 LIMIT 1;

theCharVar = 'Hello from P3004';
dsply theCharVar;
callp localProc();
P1488();
P1475();
P1535();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3004 in the procedure';
end-proc;