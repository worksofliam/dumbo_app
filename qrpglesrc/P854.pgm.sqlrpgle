**free

ctl-opt dftactgrp(*no);

dcl-pi P854;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P529.rpgleinc'

dcl-ds T1801 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1801 FROM T1801 LIMIT 1;

theCharVar = 'Hello from P854';
dsply theCharVar;
callp localProc();
P37();
P29();
P529();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P854 in the procedure';
end-proc;