**free

ctl-opt dftactgrp(*no);

dcl-pi P1463;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P827.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'

dcl-ds T253 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T253 FROM T253 LIMIT 1;

theCharVar = 'Hello from P1463';
dsply theCharVar;
callp localProc();
P827();
P640();
P687();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1463 in the procedure';
end-proc;