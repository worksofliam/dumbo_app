**free

ctl-opt dftactgrp(*no);

dcl-pi P2788;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2338.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P634.rpgleinc'

dcl-ds theTable extname('T544') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T544 LIMIT 1;

theCharVar = 'Hello from P2788';
dsply theCharVar;
callp localProc();
P2338();
P101();
P634();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2788 in the procedure';
end-proc;