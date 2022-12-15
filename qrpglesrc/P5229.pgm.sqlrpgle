**free

ctl-opt dftactgrp(*no);

dcl-pi P5229;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3874.rpgleinc'
/copy 'qrpgleref/P1000.rpgleinc'
/copy 'qrpgleref/P3331.rpgleinc'

dcl-ds theTable extname('T268') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T268 LIMIT 1;

theCharVar = 'Hello from P5229';
dsply theCharVar;
callp localProc();
P3874();
P1000();
P3331();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5229 in the procedure';
end-proc;