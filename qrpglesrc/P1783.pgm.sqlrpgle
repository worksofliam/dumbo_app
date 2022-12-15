**free

ctl-opt dftactgrp(*no);

dcl-pi P1783;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P843.rpgleinc'
/copy 'qrpgleref/P1251.rpgleinc'
/copy 'qrpgleref/P812.rpgleinc'

dcl-ds T1124 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1124 FROM T1124 LIMIT 1;

theCharVar = 'Hello from P1783';
dsply theCharVar;
callp localProc();
P843();
P1251();
P812();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1783 in the procedure';
end-proc;