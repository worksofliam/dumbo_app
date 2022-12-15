**free

ctl-opt dftactgrp(*no);

dcl-pi P3306;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P2588.rpgleinc'
/copy 'qrpgleref/P3287.rpgleinc'

dcl-ds T1763 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1763 FROM T1763 LIMIT 1;

theCharVar = 'Hello from P3306';
dsply theCharVar;
callp localProc();
P140();
P2588();
P3287();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3306 in the procedure';
end-proc;