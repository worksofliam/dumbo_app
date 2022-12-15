**free

ctl-opt dftactgrp(*no);

dcl-pi P1361;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P856.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'
/copy 'qrpgleref/P346.rpgleinc'

dcl-ds T225 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T225 FROM T225 LIMIT 1;

theCharVar = 'Hello from P1361';
dsply theCharVar;
callp localProc();
P856();
P612();
P346();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1361 in the procedure';
end-proc;