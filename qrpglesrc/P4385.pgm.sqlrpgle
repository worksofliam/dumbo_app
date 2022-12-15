**free

ctl-opt dftactgrp(*no);

dcl-pi P4385;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2988.rpgleinc'
/copy 'qrpgleref/P3575.rpgleinc'
/copy 'qrpgleref/P3426.rpgleinc'

dcl-ds T473 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T473 FROM T473 LIMIT 1;

theCharVar = 'Hello from P4385';
dsply theCharVar;
callp localProc();
P2988();
P3575();
P3426();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4385 in the procedure';
end-proc;