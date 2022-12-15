**free

ctl-opt dftactgrp(*no);

dcl-pi P409;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P346.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'

dcl-ds T17 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T17 FROM T17 LIMIT 1;

theCharVar = 'Hello from P409';
dsply theCharVar;
callp localProc();
P346();
P248();
P239();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P409 in the procedure';
end-proc;