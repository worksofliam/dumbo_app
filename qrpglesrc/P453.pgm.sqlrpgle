**free

ctl-opt dftactgrp(*no);

dcl-pi P453;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P268.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'

dcl-ds theTable extname('T1660') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1660 LIMIT 1;

theCharVar = 'Hello from P453';
dsply theCharVar;
callp localProc();
P268();
P27();
P400();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P453 in the procedure';
end-proc;