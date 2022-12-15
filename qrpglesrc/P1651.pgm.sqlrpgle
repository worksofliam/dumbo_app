**free

ctl-opt dftactgrp(*no);

dcl-pi P1651;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P872.rpgleinc'

dcl-ds T1776 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1776 FROM T1776 LIMIT 1;

theCharVar = 'Hello from P1651';
dsply theCharVar;
callp localProc();
P209();
P135();
P872();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1651 in the procedure';
end-proc;