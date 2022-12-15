**free

ctl-opt dftactgrp(*no);

dcl-pi P1131;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P1081.rpgleinc'

dcl-ds theTable extname('T718') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T718 LIMIT 1;

theCharVar = 'Hello from P1131';
dsply theCharVar;
callp localProc();
P173();
P22();
P1081();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1131 in the procedure';
end-proc;