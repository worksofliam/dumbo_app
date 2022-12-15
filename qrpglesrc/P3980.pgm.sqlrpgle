**free

ctl-opt dftactgrp(*no);

dcl-pi P3980;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1740.rpgleinc'
/copy 'qrpgleref/P1156.rpgleinc'
/copy 'qrpgleref/P2483.rpgleinc'

dcl-ds T538 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T538 FROM T538 LIMIT 1;

theCharVar = 'Hello from P3980';
dsply theCharVar;
callp localProc();
P1740();
P1156();
P2483();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3980 in the procedure';
end-proc;