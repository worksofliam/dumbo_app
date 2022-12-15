**free

ctl-opt dftactgrp(*no);

dcl-pi P2938;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2162.rpgleinc'
/copy 'qrpgleref/P989.rpgleinc'
/copy 'qrpgleref/P701.rpgleinc'

dcl-ds theTable extname('T1184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1184 LIMIT 1;

theCharVar = 'Hello from P2938';
dsply theCharVar;
callp localProc();
P2162();
P989();
P701();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2938 in the procedure';
end-proc;