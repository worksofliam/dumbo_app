**free

ctl-opt dftactgrp(*no);

dcl-pi P3131;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1086.rpgleinc'
/copy 'qrpgleref/P1373.rpgleinc'
/copy 'qrpgleref/P1895.rpgleinc'

dcl-ds theTable extname('T342') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T342 LIMIT 1;

theCharVar = 'Hello from P3131';
dsply theCharVar;
callp localProc();
P1086();
P1373();
P1895();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3131 in the procedure';
end-proc;