**free

ctl-opt dftactgrp(*no);

dcl-pi P3247;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P2613.rpgleinc'
/copy 'qrpgleref/P2158.rpgleinc'

dcl-ds theTable extname('T447') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T447 LIMIT 1;

theCharVar = 'Hello from P3247';
dsply theCharVar;
callp localProc();
P200();
P2613();
P2158();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3247 in the procedure';
end-proc;