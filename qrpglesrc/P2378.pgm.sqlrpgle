**free

ctl-opt dftactgrp(*no);

dcl-pi P2378;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2253.rpgleinc'
/copy 'qrpgleref/P848.rpgleinc'
/copy 'qrpgleref/P1848.rpgleinc'

dcl-ds theTable extname('T154') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T154 LIMIT 1;

theCharVar = 'Hello from P2378';
dsply theCharVar;
callp localProc();
P2253();
P848();
P1848();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2378 in the procedure';
end-proc;