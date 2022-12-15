**free

ctl-opt dftactgrp(*no);

dcl-pi P1624;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P434.rpgleinc'
/copy 'qrpgleref/P368.rpgleinc'
/copy 'qrpgleref/P1186.rpgleinc'

dcl-ds T309 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T309 FROM T309 LIMIT 1;

theCharVar = 'Hello from P1624';
dsply theCharVar;
callp localProc();
P434();
P368();
P1186();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1624 in the procedure';
end-proc;