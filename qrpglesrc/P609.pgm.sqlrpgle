**free

ctl-opt dftactgrp(*no);

dcl-pi P609;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P426.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P589.rpgleinc'

dcl-ds theTable extname('T1546') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1546 LIMIT 1;

theCharVar = 'Hello from P609';
dsply theCharVar;
callp localProc();
P426();
P148();
P589();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P609 in the procedure';
end-proc;