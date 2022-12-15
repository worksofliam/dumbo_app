**free

ctl-opt dftactgrp(*no);

dcl-pi P958;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P621.rpgleinc'
/copy 'qrpgleref/P575.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'

dcl-ds theTable extname('T188') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T188 LIMIT 1;

theCharVar = 'Hello from P958';
dsply theCharVar;
callp localProc();
P621();
P575();
P755();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P958 in the procedure';
end-proc;