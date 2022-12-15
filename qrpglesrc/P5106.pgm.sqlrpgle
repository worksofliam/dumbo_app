**free

ctl-opt dftactgrp(*no);

dcl-pi P5106;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2301.rpgleinc'
/copy 'qrpgleref/P865.rpgleinc'
/copy 'qrpgleref/P3719.rpgleinc'

dcl-ds T240 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T240 FROM T240 LIMIT 1;

theCharVar = 'Hello from P5106';
dsply theCharVar;
callp localProc();
P2301();
P865();
P3719();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5106 in the procedure';
end-proc;