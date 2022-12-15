**free

ctl-opt dftactgrp(*no);

dcl-pi P284;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P249.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'

dcl-ds theTable extname('T251') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T251 LIMIT 1;

theCharVar = 'Hello from P284';
dsply theCharVar;
callp localProc();
P249();
P262();
P173();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P284 in the procedure';
end-proc;