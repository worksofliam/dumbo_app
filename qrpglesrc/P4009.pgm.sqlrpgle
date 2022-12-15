**free

ctl-opt dftactgrp(*no);

dcl-pi P4009;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2137.rpgleinc'
/copy 'qrpgleref/P2638.rpgleinc'
/copy 'qrpgleref/P2928.rpgleinc'

dcl-ds T749 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T749 FROM T749 LIMIT 1;

theCharVar = 'Hello from P4009';
dsply theCharVar;
callp localProc();
P2137();
P2638();
P2928();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4009 in the procedure';
end-proc;