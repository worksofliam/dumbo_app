**free

ctl-opt dftactgrp(*no);

dcl-pi P719;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds theTable extname('T483') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T483 LIMIT 1;

theCharVar = 'Hello from P719';
dsply theCharVar;
callp localProc();
P271();
P481();
P110();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P719 in the procedure';
end-proc;