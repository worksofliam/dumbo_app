**free

ctl-opt dftactgrp(*no);

dcl-pi P661;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P608.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P373.rpgleinc'

dcl-ds T156 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T156 FROM T156 LIMIT 1;

theCharVar = 'Hello from P661';
dsply theCharVar;
callp localProc();
P608();
P325();
P373();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P661 in the procedure';
end-proc;