**free

ctl-opt dftactgrp(*no);

dcl-pi P1370;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P932.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'

dcl-ds T853 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T853 FROM T853 LIMIT 1;

theCharVar = 'Hello from P1370';
dsply theCharVar;
callp localProc();
P106();
P932();
P32();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1370 in the procedure';
end-proc;