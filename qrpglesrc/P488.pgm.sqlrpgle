**free

ctl-opt dftactgrp(*no);

dcl-pi P488;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P217.rpgleinc'

dcl-ds theTable extname('T191') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T191 LIMIT 1;

theCharVar = 'Hello from P488';
dsply theCharVar;
callp localProc();
P236();
P295();
P217();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P488 in the procedure';
end-proc;