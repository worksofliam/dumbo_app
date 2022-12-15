**free

ctl-opt dftactgrp(*no);

dcl-pi P3521;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1756.rpgleinc'
/copy 'qrpgleref/P1732.rpgleinc'
/copy 'qrpgleref/P1925.rpgleinc'

dcl-ds theTable extname('T979') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T979 LIMIT 1;

theCharVar = 'Hello from P3521';
dsply theCharVar;
callp localProc();
P1756();
P1732();
P1925();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3521 in the procedure';
end-proc;