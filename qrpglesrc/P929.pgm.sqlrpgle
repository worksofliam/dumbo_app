**free

ctl-opt dftactgrp(*no);

dcl-pi P929;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'

dcl-ds theTable extname('T142') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T142 LIMIT 1;

theCharVar = 'Hello from P929';
dsply theCharVar;
callp localProc();
P705();
P739();
P320();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P929 in the procedure';
end-proc;