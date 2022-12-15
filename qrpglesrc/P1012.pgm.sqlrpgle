**free

ctl-opt dftactgrp(*no);

dcl-pi P1012;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'
/copy 'qrpgleref/P910.rpgleinc'

dcl-ds T476 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T476 FROM T476 LIMIT 1;

theCharVar = 'Hello from P1012';
dsply theCharVar;
callp localProc();
P33();
P360();
P910();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1012 in the procedure';
end-proc;