**free

ctl-opt dftactgrp(*no);

dcl-pi P487;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'

dcl-ds T95 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T95 FROM T95 LIMIT 1;

theCharVar = 'Hello from P487';
dsply theCharVar;
callp localProc();
P51();
P13();
P109();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P487 in the procedure';
end-proc;