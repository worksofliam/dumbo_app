**free

ctl-opt dftactgrp(*no);

dcl-pi P950;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'

dcl-ds theTable extname('T29') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T29 LIMIT 1;

theCharVar = 'Hello from P950';
dsply theCharVar;
callp localProc();
P19();
P288();
P802();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P950 in the procedure';
end-proc;