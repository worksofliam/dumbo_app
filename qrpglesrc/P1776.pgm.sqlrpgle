**free

ctl-opt dftactgrp(*no);

dcl-pi P1776;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1504.rpgleinc'
/copy 'qrpgleref/P1052.rpgleinc'
/copy 'qrpgleref/P1019.rpgleinc'

dcl-ds T1279 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1279 FROM T1279 LIMIT 1;

theCharVar = 'Hello from P1776';
dsply theCharVar;
callp localProc();
P1504();
P1052();
P1019();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1776 in the procedure';
end-proc;