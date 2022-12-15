**free

ctl-opt dftactgrp(*no);

dcl-pi P3139;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1182.rpgleinc'
/copy 'qrpgleref/P1951.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'

dcl-ds T1038 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1038 FROM T1038 LIMIT 1;

theCharVar = 'Hello from P3139';
dsply theCharVar;
callp localProc();
P1182();
P1951();
P439();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3139 in the procedure';
end-proc;