**free

ctl-opt dftactgrp(*no);

dcl-pi P3375;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2226.rpgleinc'
/copy 'qrpgleref/P558.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'

dcl-ds theTable extname('T369') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T369 LIMIT 1;

theCharVar = 'Hello from P3375';
dsply theCharVar;
callp localProc();
P2226();
P558();
P404();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3375 in the procedure';
end-proc;