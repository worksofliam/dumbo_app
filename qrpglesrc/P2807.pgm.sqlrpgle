**free

ctl-opt dftactgrp(*no);

dcl-pi P2807;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2085.rpgleinc'
/copy 'qrpgleref/P2389.rpgleinc'
/copy 'qrpgleref/P567.rpgleinc'

dcl-ds T260 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T260 FROM T260 LIMIT 1;

theCharVar = 'Hello from P2807';
dsply theCharVar;
callp localProc();
P2085();
P2389();
P567();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2807 in the procedure';
end-proc;