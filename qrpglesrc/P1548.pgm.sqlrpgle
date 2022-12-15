**free

ctl-opt dftactgrp(*no);

dcl-pi P1548;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1168.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'

dcl-ds T289 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T289 FROM T289 LIMIT 1;

theCharVar = 'Hello from P1548';
dsply theCharVar;
callp localProc();
P1168();
P119();
P146();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1548 in the procedure';
end-proc;