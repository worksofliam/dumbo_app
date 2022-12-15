**free

ctl-opt dftactgrp(*no);

dcl-pi P5460;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4851.rpgleinc'
/copy 'qrpgleref/P5066.rpgleinc'
/copy 'qrpgleref/P4612.rpgleinc'

dcl-ds T475 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T475 FROM T475 LIMIT 1;

theCharVar = 'Hello from P5460';
dsply theCharVar;
callp localProc();
P4851();
P5066();
P4612();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5460 in the procedure';
end-proc;