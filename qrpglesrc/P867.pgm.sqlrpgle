**free

ctl-opt dftactgrp(*no);

dcl-pi P867;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P798.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'

dcl-ds T166 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T166 FROM T166 LIMIT 1;

theCharVar = 'Hello from P867';
dsply theCharVar;
callp localProc();
P320();
P798();
P251();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P867 in the procedure';
end-proc;