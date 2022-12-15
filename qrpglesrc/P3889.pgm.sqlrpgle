**free

ctl-opt dftactgrp(*no);

dcl-pi P3889;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1484.rpgleinc'
/copy 'qrpgleref/P2835.rpgleinc'
/copy 'qrpgleref/P2995.rpgleinc'

dcl-ds theTable extname('T1248') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1248 LIMIT 1;

theCharVar = 'Hello from P3889';
dsply theCharVar;
callp localProc();
P1484();
P2835();
P2995();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3889 in the procedure';
end-proc;