**free

ctl-opt dftactgrp(*no);

dcl-pi P2558;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1934.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P902.rpgleinc'

dcl-ds T1826 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1826 FROM T1826 LIMIT 1;

theCharVar = 'Hello from P2558';
dsply theCharVar;
callp localProc();
P1934();
P531();
P902();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2558 in the procedure';
end-proc;