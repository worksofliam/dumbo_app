**free

ctl-opt dftactgrp(*no);

dcl-pi P2317;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1048.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P2316.rpgleinc'

dcl-ds theTable extname('T561') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T561 LIMIT 1;

theCharVar = 'Hello from P2317';
dsply theCharVar;
callp localProc();
P1048();
P78();
P2316();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2317 in the procedure';
end-proc;