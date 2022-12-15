**free

ctl-opt dftactgrp(*no);

dcl-pi P719;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'

dcl-ds theTable extname('T198') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T198 LIMIT 1;

theCharVar = 'Hello from P719';
dsply theCharVar;
callp localProc();
P283();
P377();
P211();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P719 in the procedure';
end-proc;