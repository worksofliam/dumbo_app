**free

ctl-opt dftactgrp(*no);

dcl-pi P3486;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3172.rpgleinc'
/copy 'qrpgleref/P2614.rpgleinc'
/copy 'qrpgleref/P2779.rpgleinc'

dcl-ds theTable extname('T865') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T865 LIMIT 1;

theCharVar = 'Hello from P3486';
dsply theCharVar;
callp localProc();
P3172();
P2614();
P2779();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3486 in the procedure';
end-proc;