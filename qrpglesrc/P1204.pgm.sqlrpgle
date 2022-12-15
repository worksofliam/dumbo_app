**free

ctl-opt dftactgrp(*no);

dcl-pi P1204;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P660.rpgleinc'
/copy 'qrpgleref/P1072.rpgleinc'

dcl-ds T152 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T152 FROM T152 LIMIT 1;

theCharVar = 'Hello from P1204';
dsply theCharVar;
callp localProc();
P208();
P660();
P1072();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1204 in the procedure';
end-proc;