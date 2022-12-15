**free

ctl-opt dftactgrp(*no);

dcl-pi P1089;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P928.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'

dcl-ds theTable extname('T756') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T756 LIMIT 1;

theCharVar = 'Hello from P1089';
dsply theCharVar;
callp localProc();
P928();
P377();
P278();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1089 in the procedure';
end-proc;