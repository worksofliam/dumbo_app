**free

ctl-opt dftactgrp(*no);

dcl-pi P4102;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P2455.rpgleinc'
/copy 'qrpgleref/P3449.rpgleinc'

dcl-ds T820 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T820 FROM T820 LIMIT 1;

theCharVar = 'Hello from P4102';
dsply theCharVar;
callp localProc();
P339();
P2455();
P3449();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4102 in the procedure';
end-proc;