**free

ctl-opt dftactgrp(*no);

dcl-pi P774;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P476.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'

dcl-ds T208 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T208 FROM T208 LIMIT 1;

theCharVar = 'Hello from P774';
dsply theCharVar;
callp localProc();
P373();
P476();
P138();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P774 in the procedure';
end-proc;