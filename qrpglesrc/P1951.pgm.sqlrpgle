**free

ctl-opt dftactgrp(*no);

dcl-pi P1951;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P955.rpgleinc'
/copy 'qrpgleref/P1509.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'

dcl-ds theTable extname('T429') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T429 LIMIT 1;

theCharVar = 'Hello from P1951';
dsply theCharVar;
callp localProc();
P955();
P1509();
P737();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1951 in the procedure';
end-proc;