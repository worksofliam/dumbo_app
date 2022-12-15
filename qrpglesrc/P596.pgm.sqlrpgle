**free

ctl-opt dftactgrp(*no);

dcl-pi P596;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P219.rpgleinc'

dcl-ds theTable extname('T312') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T312 LIMIT 1;

theCharVar = 'Hello from P596';
dsply theCharVar;
callp localProc();
P519();
P251();
P219();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P596 in the procedure';
end-proc;