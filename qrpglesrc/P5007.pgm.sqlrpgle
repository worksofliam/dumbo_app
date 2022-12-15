**free

ctl-opt dftactgrp(*no);

dcl-pi P5007;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3053.rpgleinc'
/copy 'qrpgleref/P2793.rpgleinc'
/copy 'qrpgleref/P825.rpgleinc'

dcl-ds T1076 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1076 FROM T1076 LIMIT 1;

theCharVar = 'Hello from P5007';
dsply theCharVar;
callp localProc();
P3053();
P2793();
P825();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5007 in the procedure';
end-proc;