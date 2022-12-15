**free

ctl-opt dftactgrp(*no);

dcl-pi P4496;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4018.rpgleinc'
/copy 'qrpgleref/P2837.rpgleinc'
/copy 'qrpgleref/P1079.rpgleinc'

dcl-ds T737 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T737 FROM T737 LIMIT 1;

theCharVar = 'Hello from P4496';
dsply theCharVar;
callp localProc();
P4018();
P2837();
P1079();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4496 in the procedure';
end-proc;