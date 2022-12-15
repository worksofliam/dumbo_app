**free

ctl-opt dftactgrp(*no);

dcl-pi P1364;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1139.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P885.rpgleinc'

dcl-ds T9 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T9 FROM T9 LIMIT 1;

theCharVar = 'Hello from P1364';
dsply theCharVar;
callp localProc();
P1139();
P66();
P885();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1364 in the procedure';
end-proc;