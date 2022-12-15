**free

ctl-opt dftactgrp(*no);

dcl-pi P1116;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds T895 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T895 FROM T895 LIMIT 1;

theCharVar = 'Hello from P1116';
dsply theCharVar;
callp localProc();
P382();
P55();
P118();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1116 in the procedure';
end-proc;