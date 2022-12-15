**free

ctl-opt dftactgrp(*no);

dcl-pi P1378;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P950.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'

dcl-ds theTable extname('T259') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T259 LIMIT 1;

theCharVar = 'Hello from P1378';
dsply theCharVar;
callp localProc();
P194();
P950();
P88();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1378 in the procedure';
end-proc;