**free

ctl-opt dftactgrp(*no);

dcl-pi P4180;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3600.rpgleinc'
/copy 'qrpgleref/P3145.rpgleinc'
/copy 'qrpgleref/P2810.rpgleinc'

dcl-ds T1717 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1717 FROM T1717 LIMIT 1;

theCharVar = 'Hello from P4180';
dsply theCharVar;
callp localProc();
P3600();
P3145();
P2810();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4180 in the procedure';
end-proc;