**free

ctl-opt dftactgrp(*no);

dcl-pi P1821;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P1472.rpgleinc'
/copy 'qrpgleref/P319.rpgleinc'

dcl-ds theTable extname('T1468') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1468 LIMIT 1;

theCharVar = 'Hello from P1821';
dsply theCharVar;
callp localProc();
P591();
P1472();
P319();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1821 in the procedure';
end-proc;