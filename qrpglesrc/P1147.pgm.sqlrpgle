**free

ctl-opt dftactgrp(*no);

dcl-pi P1147;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1075.rpgleinc'
/copy 'qrpgleref/P589.rpgleinc'
/copy 'qrpgleref/P644.rpgleinc'

dcl-ds T25 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T25 FROM T25 LIMIT 1;

theCharVar = 'Hello from P1147';
dsply theCharVar;
callp localProc();
P1075();
P589();
P644();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1147 in the procedure';
end-proc;