**free

ctl-opt dftactgrp(*no);

dcl-pi P238;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'

dcl-ds theTable extname('T495') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T495 LIMIT 1;

theCharVar = 'Hello from P238';
dsply theCharVar;
callp localProc();
P49();
P13();
P213();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P238 in the procedure';
end-proc;