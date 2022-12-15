**free

ctl-opt dftactgrp(*no);

dcl-pi P2780;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1880.rpgleinc'
/copy 'qrpgleref/P957.rpgleinc'
/copy 'qrpgleref/P1984.rpgleinc'

dcl-ds T407 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T407 FROM T407 LIMIT 1;

theCharVar = 'Hello from P2780';
dsply theCharVar;
callp localProc();
P1880();
P957();
P1984();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2780 in the procedure';
end-proc;