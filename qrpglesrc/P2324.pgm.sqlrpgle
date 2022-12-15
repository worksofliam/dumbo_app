**free

ctl-opt dftactgrp(*no);

dcl-pi P2324;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1828.rpgleinc'
/copy 'qrpgleref/P2181.rpgleinc'
/copy 'qrpgleref/P2287.rpgleinc'

dcl-ds theTable extname('T212') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T212 LIMIT 1;

theCharVar = 'Hello from P2324';
dsply theCharVar;
callp localProc();
P1828();
P2181();
P2287();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2324 in the procedure';
end-proc;