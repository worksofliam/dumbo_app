**free

ctl-opt dftactgrp(*no);

dcl-pi P1776;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P472.rpgleinc'
/copy 'qrpgleref/P1022.rpgleinc'
/copy 'qrpgleref/P1276.rpgleinc'

dcl-ds theTable extname('T499') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T499 LIMIT 1;

theCharVar = 'Hello from P1776';
dsply theCharVar;
callp localProc();
P472();
P1022();
P1276();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1776 in the procedure';
end-proc;