**free

ctl-opt dftactgrp(*no);

dcl-pi P4347;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2268.rpgleinc'
/copy 'qrpgleref/P1566.rpgleinc'
/copy 'qrpgleref/P4106.rpgleinc'

dcl-ds theTable extname('T1117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1117 LIMIT 1;

theCharVar = 'Hello from P4347';
dsply theCharVar;
callp localProc();
P2268();
P1566();
P4106();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4347 in the procedure';
end-proc;