**free

ctl-opt dftactgrp(*no);

dcl-pi P4647;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1734.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'
/copy 'qrpgleref/P3706.rpgleinc'

dcl-ds T239 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T239 FROM T239 LIMIT 1;

theCharVar = 'Hello from P4647';
dsply theCharVar;
callp localProc();
P1734();
P151();
P3706();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4647 in the procedure';
end-proc;