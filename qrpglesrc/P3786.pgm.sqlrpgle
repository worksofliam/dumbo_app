**free

ctl-opt dftactgrp(*no);

dcl-pi P3786;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2894.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P2767.rpgleinc'

dcl-ds theTable extname('T1780') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1780 LIMIT 1;

theCharVar = 'Hello from P3786';
dsply theCharVar;
callp localProc();
P2894();
P59();
P2767();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3786 in the procedure';
end-proc;