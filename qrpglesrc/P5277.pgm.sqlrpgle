**free

ctl-opt dftactgrp(*no);

dcl-pi P5277;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3593.rpgleinc'
/copy 'qrpgleref/P3855.rpgleinc'
/copy 'qrpgleref/P789.rpgleinc'

dcl-ds T713 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T713 FROM T713 LIMIT 1;

theCharVar = 'Hello from P5277';
dsply theCharVar;
callp localProc();
P3593();
P3855();
P789();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5277 in the procedure';
end-proc;