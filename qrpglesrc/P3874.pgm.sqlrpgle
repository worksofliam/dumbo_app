**free

ctl-opt dftactgrp(*no);

dcl-pi P3874;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1623.rpgleinc'
/copy 'qrpgleref/P1780.rpgleinc'
/copy 'qrpgleref/P1547.rpgleinc'

dcl-ds T995 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T995 FROM T995 LIMIT 1;

theCharVar = 'Hello from P3874';
dsply theCharVar;
callp localProc();
P1623();
P1780();
P1547();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3874 in the procedure';
end-proc;