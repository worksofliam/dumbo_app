**free

ctl-opt dftactgrp(*no);

dcl-pi P178;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds T908 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T908 FROM T908 LIMIT 1;

theCharVar = 'Hello from P178';
dsply theCharVar;
callp localProc();
P15();
P145();
P26();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P178 in the procedure';
end-proc;