**free

ctl-opt dftactgrp(*no);

dcl-pi P911;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P625.rpgleinc'
/copy 'qrpgleref/P682.rpgleinc'

dcl-ds theTable extname('T934') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T934 LIMIT 1;

theCharVar = 'Hello from P911';
dsply theCharVar;
callp localProc();
P384();
P625();
P682();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P911 in the procedure';
end-proc;