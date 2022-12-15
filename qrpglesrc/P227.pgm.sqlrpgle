**free

ctl-opt dftactgrp(*no);

dcl-pi P227;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds T572 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T572 FROM T572 LIMIT 1;

theCharVar = 'Hello from P227';
dsply theCharVar;
callp localProc();
P126();
P224();
P31();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P227 in the procedure';
end-proc;