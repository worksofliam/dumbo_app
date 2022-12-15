**free

ctl-opt dftactgrp(*no);

dcl-pi P916;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P895.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'

dcl-ds T1069 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1069 FROM T1069 LIMIT 1;

theCharVar = 'Hello from P916';
dsply theCharVar;
callp localProc();
P895();
P495();
P383();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P916 in the procedure';
end-proc;