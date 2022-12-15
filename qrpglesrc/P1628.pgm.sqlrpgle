**free

ctl-opt dftactgrp(*no);

dcl-pi P1628;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'

dcl-ds theTable extname('T271') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T271 LIMIT 1;

theCharVar = 'Hello from P1628';
dsply theCharVar;
callp localProc();
P700();
P313();
P1051();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1628 in the procedure';
end-proc;