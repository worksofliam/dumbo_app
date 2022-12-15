**free

ctl-opt dftactgrp(*no);

dcl-pi P2170;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P625.rpgleinc'
/copy 'qrpgleref/P1710.rpgleinc'
/copy 'qrpgleref/P1472.rpgleinc'

dcl-ds T90 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T90 FROM T90 LIMIT 1;

theCharVar = 'Hello from P2170';
dsply theCharVar;
callp localProc();
P625();
P1710();
P1472();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2170 in the procedure';
end-proc;