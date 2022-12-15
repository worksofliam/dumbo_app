**free

ctl-opt dftactgrp(*no);

dcl-pi P550;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P442.rpgleinc'
/copy 'qrpgleref/P506.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'

dcl-ds theTable extname('T441') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T441 LIMIT 1;

theCharVar = 'Hello from P550';
dsply theCharVar;
callp localProc();
P442();
P506();
P413();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P550 in the procedure';
end-proc;