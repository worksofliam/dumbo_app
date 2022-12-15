**free

ctl-opt dftactgrp(*no);

dcl-pi P2774;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2301.rpgleinc'
/copy 'qrpgleref/P785.rpgleinc'
/copy 'qrpgleref/P418.rpgleinc'

dcl-ds theTable extname('T887') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T887 LIMIT 1;

theCharVar = 'Hello from P2774';
dsply theCharVar;
callp localProc();
P2301();
P785();
P418();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2774 in the procedure';
end-proc;