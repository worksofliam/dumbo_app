**free

ctl-opt dftactgrp(*no);

dcl-pi P205;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds theTable extname('T403') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T403 LIMIT 1;

theCharVar = 'Hello from P205';
dsply theCharVar;
callp localProc();
P43();
P110();
P11();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P205 in the procedure';
end-proc;