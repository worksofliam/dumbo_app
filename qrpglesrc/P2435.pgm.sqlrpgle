**free

ctl-opt dftactgrp(*no);

dcl-pi P2435;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P2056.rpgleinc'
/copy 'qrpgleref/P1911.rpgleinc'

dcl-ds theTable extname('T775') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T775 LIMIT 1;

theCharVar = 'Hello from P2435';
dsply theCharVar;
callp localProc();
P208();
P2056();
P1911();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2435 in the procedure';
end-proc;