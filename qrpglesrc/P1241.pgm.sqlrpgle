**free

ctl-opt dftactgrp(*no);

dcl-pi P1241;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P791.rpgleinc'
/copy 'qrpgleref/P582.rpgleinc'
/copy 'qrpgleref/P1083.rpgleinc'

dcl-ds theTable extname('T70') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T70 LIMIT 1;

theCharVar = 'Hello from P1241';
dsply theCharVar;
callp localProc();
P791();
P582();
P1083();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1241 in the procedure';
end-proc;