**free

ctl-opt dftactgrp(*no);

dcl-pi P1111;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P771.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'

dcl-ds T786 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T786 FROM T786 LIMIT 1;

theCharVar = 'Hello from P1111';
dsply theCharVar;
callp localProc();
P29();
P771();
P125();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1111 in the procedure';
end-proc;