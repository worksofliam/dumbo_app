**free

ctl-opt dftactgrp(*no);

dcl-pi P324;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds T69 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T69 FROM T69 LIMIT 1;

theCharVar = 'Hello from P324';
dsply theCharVar;
callp localProc();
P293();
P39();
P10();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P324 in the procedure';
end-proc;