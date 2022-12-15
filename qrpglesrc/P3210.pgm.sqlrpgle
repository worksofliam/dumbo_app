**free

ctl-opt dftactgrp(*no);

dcl-pi P3210;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P2565.rpgleinc'
/copy 'qrpgleref/P2328.rpgleinc'

dcl-ds theTable extname('T292') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T292 LIMIT 1;

theCharVar = 'Hello from P3210';
dsply theCharVar;
callp localProc();
P314();
P2565();
P2328();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3210 in the procedure';
end-proc;