**free

ctl-opt dftactgrp(*no);

dcl-pi P2876;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P740.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'
/copy 'qrpgleref/P2430.rpgleinc'

dcl-ds theTable extname('T562') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T562 LIMIT 1;

theCharVar = 'Hello from P2876';
dsply theCharVar;
callp localProc();
P740();
P802();
P2430();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2876 in the procedure';
end-proc;