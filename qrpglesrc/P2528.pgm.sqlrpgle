**free

ctl-opt dftactgrp(*no);

dcl-pi P2528;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P440.rpgleinc'
/copy 'qrpgleref/P1776.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'

dcl-ds theTable extname('T249') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T249 LIMIT 1;

theCharVar = 'Hello from P2528';
dsply theCharVar;
callp localProc();
P440();
P1776();
P433();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2528 in the procedure';
end-proc;