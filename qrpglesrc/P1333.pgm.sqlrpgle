**free

ctl-opt dftactgrp(*no);

dcl-pi P1333;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'

dcl-ds T1033 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1033 FROM T1033 LIMIT 1;

theCharVar = 'Hello from P1333';
dsply theCharVar;
callp localProc();
P6();
P486();
P640();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1333 in the procedure';
end-proc;