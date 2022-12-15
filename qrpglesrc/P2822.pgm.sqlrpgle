**free

ctl-opt dftactgrp(*no);

dcl-pi P2822;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2619.rpgleinc'
/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P844.rpgleinc'

dcl-ds T749 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T749 FROM T749 LIMIT 1;

theCharVar = 'Hello from P2822';
dsply theCharVar;
callp localProc();
P2619();
P347();
P844();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2822 in the procedure';
end-proc;