**free

ctl-opt dftactgrp(*no);

dcl-pi P732;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'

dcl-ds T435 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T435 FROM T435 LIMIT 1;

theCharVar = 'Hello from P732';
dsply theCharVar;
callp localProc();
P398();
P19();
P106();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P732 in the procedure';
end-proc;