**free

ctl-opt dftactgrp(*no);

dcl-pi P4659;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3625.rpgleinc'
/copy 'qrpgleref/P4342.rpgleinc'
/copy 'qrpgleref/P2833.rpgleinc'

dcl-ds theTable extname('T765') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T765 LIMIT 1;

theCharVar = 'Hello from P4659';
dsply theCharVar;
callp localProc();
P3625();
P4342();
P2833();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4659 in the procedure';
end-proc;