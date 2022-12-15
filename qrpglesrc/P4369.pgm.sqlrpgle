**free

ctl-opt dftactgrp(*no);

dcl-pi P4369;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2516.rpgleinc'
/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'

dcl-ds T439 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T439 FROM T439 LIMIT 1;

theCharVar = 'Hello from P4369';
dsply theCharVar;
callp localProc();
P2516();
P890();
P631();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4369 in the procedure';
end-proc;