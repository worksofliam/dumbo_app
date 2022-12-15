**free

ctl-opt dftactgrp(*no);

dcl-pi P2778;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P2647.rpgleinc'
/copy 'qrpgleref/P1370.rpgleinc'

dcl-ds T773 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T773 FROM T773 LIMIT 1;

theCharVar = 'Hello from P2778';
dsply theCharVar;
callp localProc();
P74();
P2647();
P1370();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2778 in the procedure';
end-proc;