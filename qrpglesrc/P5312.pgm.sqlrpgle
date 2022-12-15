**free

ctl-opt dftactgrp(*no);

dcl-pi P5312;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4520.rpgleinc'
/copy 'qrpgleref/P1795.rpgleinc'
/copy 'qrpgleref/P4160.rpgleinc'

dcl-ds theTable extname('T752') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T752 LIMIT 1;

theCharVar = 'Hello from P5312';
dsply theCharVar;
callp localProc();
P4520();
P1795();
P4160();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5312 in the procedure';
end-proc;