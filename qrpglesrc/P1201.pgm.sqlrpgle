**free

ctl-opt dftactgrp(*no);

dcl-pi P1201;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P791.rpgleinc'
/copy 'qrpgleref/P688.rpgleinc'

dcl-ds theTable extname('T1072') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1072 LIMIT 1;

theCharVar = 'Hello from P1201';
dsply theCharVar;
callp localProc();
P12();
P791();
P688();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1201 in the procedure';
end-proc;