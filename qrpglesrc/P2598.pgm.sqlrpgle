**free

ctl-opt dftactgrp(*no);

dcl-pi P2598;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P516.rpgleinc'
/copy 'qrpgleref/P2227.rpgleinc'
/copy 'qrpgleref/P1302.rpgleinc'

dcl-ds T1762 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1762 FROM T1762 LIMIT 1;

theCharVar = 'Hello from P2598';
dsply theCharVar;
callp localProc();
P516();
P2227();
P1302();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2598 in the procedure';
end-proc;