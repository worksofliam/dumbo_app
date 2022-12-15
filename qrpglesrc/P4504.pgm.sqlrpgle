**free

ctl-opt dftactgrp(*no);

dcl-pi P4504;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1686.rpgleinc'
/copy 'qrpgleref/P1776.rpgleinc'
/copy 'qrpgleref/P1159.rpgleinc'

dcl-ds T1266 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1266 FROM T1266 LIMIT 1;

theCharVar = 'Hello from P4504';
dsply theCharVar;
callp localProc();
P1686();
P1776();
P1159();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4504 in the procedure';
end-proc;