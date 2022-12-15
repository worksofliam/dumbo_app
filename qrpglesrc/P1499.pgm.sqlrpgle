**free

ctl-opt dftactgrp(*no);

dcl-pi P1499;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1330.rpgleinc'
/copy 'qrpgleref/P779.rpgleinc'
/copy 'qrpgleref/P952.rpgleinc'

dcl-ds theTable extname('T153') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T153 LIMIT 1;

theCharVar = 'Hello from P1499';
dsply theCharVar;
callp localProc();
P1330();
P779();
P952();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1499 in the procedure';
end-proc;