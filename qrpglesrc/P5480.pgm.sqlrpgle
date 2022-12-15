**free

ctl-opt dftactgrp(*no);

dcl-pi P5480;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3349.rpgleinc'
/copy 'qrpgleref/P5122.rpgleinc'
/copy 'qrpgleref/P3843.rpgleinc'

dcl-ds theTable extname('T780') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T780 LIMIT 1;

theCharVar = 'Hello from P5480';
dsply theCharVar;
callp localProc();
P3349();
P5122();
P3843();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5480 in the procedure';
end-proc;