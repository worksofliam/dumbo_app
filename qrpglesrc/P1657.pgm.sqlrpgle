**free

ctl-opt dftactgrp(*no);

dcl-pi P1657;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P509.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P1323.rpgleinc'

dcl-ds theTable extname('T592') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T592 LIMIT 1;

theCharVar = 'Hello from P1657';
dsply theCharVar;
callp localProc();
P509();
P1051();
P1323();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1657 in the procedure';
end-proc;