**free

ctl-opt dftactgrp(*no);

dcl-pi P1676;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1198.rpgleinc'
/copy 'qrpgleref/P955.rpgleinc'
/copy 'qrpgleref/P1181.rpgleinc'

dcl-ds theTable extname('T106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T106 LIMIT 1;

theCharVar = 'Hello from P1676';
dsply theCharVar;
callp localProc();
P1198();
P955();
P1181();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1676 in the procedure';
end-proc;