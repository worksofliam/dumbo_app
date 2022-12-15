**free

ctl-opt dftactgrp(*no);

dcl-pi P1484;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'
/copy 'qrpgleref/P275.rpgleinc'

dcl-ds T271 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T271 FROM T271 LIMIT 1;

theCharVar = 'Hello from P1484';
dsply theCharVar;
callp localProc();
P264();
P261();
P275();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1484 in the procedure';
end-proc;