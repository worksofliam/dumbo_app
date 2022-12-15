**free

ctl-opt dftactgrp(*no);

dcl-pi P109;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds T125 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T125 FROM T125 LIMIT 1;

theCharVar = 'Hello from P109';
dsply theCharVar;
callp localProc();
P19();
P57();
P13();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P109 in the procedure';
end-proc;