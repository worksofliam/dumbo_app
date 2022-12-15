**free

ctl-opt dftactgrp(*no);

dcl-pi P2131;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1864.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P378.rpgleinc'

dcl-ds theTable extname('T165') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T165 LIMIT 1;

theCharVar = 'Hello from P2131';
dsply theCharVar;
callp localProc();
P1864();
P59();
P378();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2131 in the procedure';
end-proc;