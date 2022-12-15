**free

ctl-opt dftactgrp(*no);

dcl-pi P5295;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1553.rpgleinc'
/copy 'qrpgleref/P3706.rpgleinc'
/copy 'qrpgleref/P3721.rpgleinc'

dcl-ds T1314 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1314 FROM T1314 LIMIT 1;

theCharVar = 'Hello from P5295';
dsply theCharVar;
callp localProc();
P1553();
P3706();
P3721();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5295 in the procedure';
end-proc;