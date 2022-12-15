**free

ctl-opt dftactgrp(*no);

dcl-pi P3466;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P810.rpgleinc'
/copy 'qrpgleref/P855.rpgleinc'
/copy 'qrpgleref/P2599.rpgleinc'

dcl-ds T45 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T45 FROM T45 LIMIT 1;

theCharVar = 'Hello from P3466';
dsply theCharVar;
callp localProc();
P810();
P855();
P2599();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3466 in the procedure';
end-proc;