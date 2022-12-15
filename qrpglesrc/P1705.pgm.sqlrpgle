**free

ctl-opt dftactgrp(*no);

dcl-pi P1705;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P1116.rpgleinc'

dcl-ds theTable extname('T148') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T148 LIMIT 1;

theCharVar = 'Hello from P1705';
dsply theCharVar;
callp localProc();
P241();
P125();
P1116();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1705 in the procedure';
end-proc;