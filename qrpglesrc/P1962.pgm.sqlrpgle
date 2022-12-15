**free

ctl-opt dftactgrp(*no);

dcl-pi P1962;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1889.rpgleinc'
/copy 'qrpgleref/P1590.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'

dcl-ds T508 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T508 FROM T508 LIMIT 1;

theCharVar = 'Hello from P1962';
dsply theCharVar;
callp localProc();
P1889();
P1590();
P573();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1962 in the procedure';
end-proc;