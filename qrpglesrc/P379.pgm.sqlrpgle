**free

ctl-opt dftactgrp(*no);

dcl-pi P379;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P379';
dsply theCharVar;
callp localProc();
P314();
P34();
P175();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P379 in the procedure';
end-proc;