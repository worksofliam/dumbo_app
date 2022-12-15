**free

ctl-opt dftactgrp(*no);

dcl-pi P1205;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P545.rpgleinc'
/copy 'qrpgleref/P967.rpgleinc'
/copy 'qrpgleref/P566.rpgleinc'

dcl-ds T1508 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1508 FROM T1508 LIMIT 1;

theCharVar = 'Hello from P1205';
dsply theCharVar;
callp localProc();
P545();
P967();
P566();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1205 in the procedure';
end-proc;