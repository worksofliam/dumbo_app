**free

ctl-opt dftactgrp(*no);

dcl-pi P68;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'

dcl-ds theTable extname('T366') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T366 LIMIT 1;

theCharVar = 'Hello from P68';
dsply theCharVar;
callp localProc();
P18();
P14();
P45();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P68 in the procedure';
end-proc;