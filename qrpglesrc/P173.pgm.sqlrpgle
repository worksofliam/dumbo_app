**free

ctl-opt dftactgrp(*no);

dcl-pi P173;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds theTable extname('T1225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1225 LIMIT 1;

theCharVar = 'Hello from P173';
dsply theCharVar;
callp localProc();
P3();
P131();
P18();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P173 in the procedure';
end-proc;