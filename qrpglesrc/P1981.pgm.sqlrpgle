**free

ctl-opt dftactgrp(*no);

dcl-pi P1981;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P1277.rpgleinc'

dcl-ds theTable extname('T233') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T233 LIMIT 1;

theCharVar = 'Hello from P1981';
dsply theCharVar;
callp localProc();
P75();
P95();
P1277();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1981 in the procedure';
end-proc;