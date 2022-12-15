**free

ctl-opt dftactgrp(*no);

dcl-pi P37;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T203') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T203 LIMIT 1;

theCharVar = 'Hello from P37';
dsply theCharVar;
callp localProc();
P18();
P1();
P14();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P37 in the procedure';
end-proc;