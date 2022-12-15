**free

ctl-opt dftactgrp(*no);

dcl-pi P2833;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1886.rpgleinc'
/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P1104.rpgleinc'

dcl-ds theTable extname('T998') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T998 LIMIT 1;

theCharVar = 'Hello from P2833';
dsply theCharVar;
callp localProc();
P1886();
P522();
P1104();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2833 in the procedure';
end-proc;