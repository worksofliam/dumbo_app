**free

ctl-opt dftactgrp(*no);

dcl-pi P1932;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P511.rpgleinc'
/copy 'qrpgleref/P1427.rpgleinc'
/copy 'qrpgleref/P1561.rpgleinc'

dcl-ds T648 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T648 FROM T648 LIMIT 1;

theCharVar = 'Hello from P1932';
dsply theCharVar;
callp localProc();
P511();
P1427();
P1561();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1932 in the procedure';
end-proc;