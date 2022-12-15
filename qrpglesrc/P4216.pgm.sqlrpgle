**free

ctl-opt dftactgrp(*no);

dcl-pi P4216;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P302.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P1776.rpgleinc'

dcl-ds theTable extname('T778') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T778 LIMIT 1;

theCharVar = 'Hello from P4216';
dsply theCharVar;
callp localProc();
P302();
P81();
P1776();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4216 in the procedure';
end-proc;