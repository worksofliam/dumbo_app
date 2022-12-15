**free

ctl-opt dftactgrp(*no);

dcl-pi P4847;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3926.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P1776.rpgleinc'

dcl-ds theTable extname('T995') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T995 LIMIT 1;

theCharVar = 'Hello from P4847';
dsply theCharVar;
callp localProc();
P3926();
P61();
P1776();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4847 in the procedure';
end-proc;